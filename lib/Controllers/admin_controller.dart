import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminController extends GetxController {
  RxBool isLoading = false.obs;

  setLoading(status) {
    isLoading.value = status;
  }

  final firestore = FirebaseFirestore.instance;

  // Check if the question already exists in the database before adding it
  Future<void> handleUnansweredQuestion(
      String question, String? keyword) async {
    if (keyword != null) {
      // Check if the question already exists in the specific keyword collection
      final keywordDoc = firestore.collection('Database').doc(keyword);
      final keywordSnapshot = await keywordDoc.get();
      final existingQuestions = keywordSnapshot.exists
          ? List.from(keywordSnapshot.data()?["unanswered_questions"] ?? [])
          : [];

      // Check if the question already exists in the list
      if (!existingQuestions.any((item) => item["question"] == question)) {
        // If not, add the question to the collection
        await keywordDoc.set({
          "unanswered_questions": FieldValue.arrayUnion([
            {
              "question": question,
              "timestamp": DateTime.now().toIso8601String(),
            }
          ])
        }, SetOptions(merge: true));
      }
    } else {
      // Check if the question already exists in the UnknownQuestions collection
      final unknownQuestionsSnapshot = await firestore
          .collection('UnknownQuestions')
          .where("question", isEqualTo: question)
          .get();

      if (unknownQuestionsSnapshot.docs.isEmpty) {
        // If the question doesn't exist, add it
        await firestore.collection('UnknownQuestions').add({
          "question": question,
          "suggested_keyword": "unknown",
          "timestamp": DateTime.now().toIso8601String(),
        });
      }
    }
  }


Stream<List<Map<String, dynamic>>> getUnansweredQuestions(String keyword) {
  return firestore.collection('Database').doc(keyword).snapshots().map((snapshot) {
    if (snapshot.exists) {
      final data = snapshot.data();
      if (data != null && data.containsKey('unanswered_questions')) {
        // Convert the unanswered_questions list into a streamable list of maps
        return List<Map<String, dynamic>>.from(data['unanswered_questions']);
      }
    }
    return [];
  });
}


Stream<QuerySnapshot> getUnknownQuestions() {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Fetch all unknown questions from the UnknownQuestions collection
  return firestore.collection('UnknownQuestions').snapshots();
}

}

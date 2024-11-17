import 'dart:math';

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

Future<Map<String, dynamic>?> fetchRandomUnansweredQuestions() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Random random = Random();


  List<Map<String, dynamic>> unansweredQuestions = [];

  // Fetch all documents from the 'Database' collection
  QuerySnapshot snapshot = await firestore.collection('Database').get();

  for (var doc in snapshot.docs) {
    // Get the unanswered questions and add them to the list
    List<Map<String, dynamic>> questions = List<Map<String, dynamic>>.from(doc['unanswered_questions']);
    unansweredQuestions.addAll(questions);  // Add the questions from all keywords to a single list
  }
  // If no unanswered questions, return null
  if (unansweredQuestions.isEmpty) {
    return null;
  }

  // Return a random unanswered question
  return unansweredQuestions[random.nextInt(unansweredQuestions.length)];

}

// Function to save the answer to Firebase
Future<void> saveAnswerToFirebase(String? timestamp, String answer) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Locate the unanswered question using the timestamp and update it with the user's response
  await firestore.collection('Database').get().then((snapshot) {
    for (var doc in snapshot.docs) {
      List questions = List.from(doc['unanswered_questions']);
      var questionToUpdate = questions.firstWhere(
        (question) => question['timestamp'] == timestamp,
        orElse: () => null,
      );

      if (questionToUpdate != null) {
        // Remove the unanswered question
        firestore.collection('Database').doc(doc.id).update({
          'unanswered_questions': FieldValue.arrayRemove([questionToUpdate]),
        });
        // Check if the question already has a 'history' array
          List<dynamic> answers = questionToUpdate['answers'] ?? [];

          // Add the new answer to the history
          answers.add(answer);

        // Add the question with the user's response
        firestore.collection('Database').doc(doc.id).update({
          'unanswered_questions': FieldValue.arrayUnion([
            {
              'question': questionToUpdate['question'],
              'timestamp': questionToUpdate['timestamp'],
              'answers': answers,
            }
          ]),
        });
      }
    }
  });
}


// // Fetch all keywords and their unanswered questions
// Future<Map<String, List<Map<String, dynamic>>>> fetchUnansweredQuestions() async {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;

//   // Create an empty map to store questions for each keyword
//   Map<String, List<Map<String, dynamic>>> unansweredQuestions = {};

//   // Fetch all documents from the 'Database' collection (each document represents a keyword)
//   QuerySnapshot snapshot = await firestore.collection('Database').get();

//   for (var doc in snapshot.docs) {
//     // Get the keyword (document id) and unanswered questions from each document
//     String keyword = doc.id;
//     List<Map<String, dynamic>> questions = List<Map<String, dynamic>>.from(doc['unanswered_questions']);

//     // Add the questions to the map
//     unansweredQuestions[keyword] = questions;
//   }

//   return unansweredQuestions;
// }


}

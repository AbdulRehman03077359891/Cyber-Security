// Tab 1: Unknown Questions
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cyber_security_awareness_aibot/Widgets/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UnknownQuestionsTab extends StatelessWidget {
  final FirebaseFirestore firestore;

  const UnknownQuestionsTab({super.key, required this.firestore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('UnknownQuestions').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.cyanAccent),
            );
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text(
                'No Unknown Questions',
                style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
          }

          final questions = snapshot.data!.docs;

          return ListView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return AnimatedCard(
                child: ListTile(
                  title: Text(
                    question['question'],
                    style: const TextStyle(color: Colors.cyanAccent),
                  ),
                  subtitle: Text(
                    'Suggested Keyword: ${question['suggested_keyword']}',
                    style: const TextStyle(color: Colors.white70),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: () async {
                      await firestore
                          .collection('UnknownQuestions')
                          .doc(question.id)
                          .delete();
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
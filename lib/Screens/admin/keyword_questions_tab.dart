// Tab 2: Keyword-Based Questions
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cyber_security_awareness_aibot/Widgets/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeywordQuestionsTab extends StatelessWidget {
  final FirebaseFirestore firestore;

  const KeywordQuestionsTab({super.key, required this.firestore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('Database').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.cyanAccent),
            );
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text(
                'No Keyword-Based Questions',
                style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            );
          }

          final keywordDocs = snapshot.data!.docs;

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: keywordDocs.length,
            itemBuilder: (context, index) {
              final keyword = keywordDocs[index];
              final unansweredQuestions =
                  List.from(keyword['unanswered_questions'] ?? []);

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedCard(
                  child: ExpansionTile(
                    title: Text(
                      keyword.id,
                      style: const TextStyle(color: Colors.cyanAccent),
                    ),
                    children: unansweredQuestions.map((questionData) {
                      return ListTile(
                        title: Text(
                          questionData['question'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'Timestamp: ${questionData['timestamp']}',
                          style: const TextStyle(color: Colors.white70),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () async {
                            await firestore
                                .collection('Database')
                                .doc(keyword.id)
                                .update({
                              "unanswered_questions":
                                  FieldValue.arrayRemove([questionData]),
                            });
                          },
                        ),
                      );
                    }).toList(),
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
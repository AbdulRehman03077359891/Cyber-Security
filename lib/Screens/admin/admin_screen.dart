import 'package:cyber_security_awareness_aibot/Screens/User/chatbot_screen.dart';
import 'package:cyber_security_awareness_aibot/Screens/admin/keyword_questions_tab.dart';
import 'package:cyber_security_awareness_aibot/Screens/admin/unknown_questions_tab.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPanelScreen extends StatelessWidget {
    final String userUid, userName, userEmail;

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  AdminPanelScreen({super.key, required this.userUid, required this.userName, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Cybersecurity Admin Dash',
            style: GoogleFonts.shareTechMono(
              textStyle: const TextStyle(
                fontSize: 25,
                shadows: [BoxShadow(blurRadius: 10,spreadRadius: 10,color: Colors.lime)],
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.cyanAccent,
            labelColor: Colors.cyanAccent,
            tabs: [
              Tab(
                icon: Icon(Icons.help_outline, color: Colors.cyanAccent),
                text: 'Unknown Questions',
              ),
              Tab(
                icon: Icon(Icons.category, color: Colors.cyanAccent),
                text: 'Keyword Questions',
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Background Lottie Animation
            Positioned.fill(
              child: Lottie.asset(
                'assets/cybersecurity.json', // Download or link a cybersecurity-themed Lottie animation
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                reverse: true,
                repeat: true,
              ),
            ),
            TabBarView(
              children: [
                // Tab 1: Unknown Questions
                UnknownQuestionsTab(firestore: firestore),
                // Tab 2: Keyword-Based Questions
                KeywordQuestionsTab(firestore: firestore),
              ],
            ),
          ],
        ),
        floatingActionButton: AnimatedScale(
  scale: 1.2, // Adjust this value to control the scale of the button when pressed
  duration: Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  child: FloatingActionButton(
    onPressed: () {
      Get.to(() => ChatScreen(
            userUid: userUid,
            userName: userName,
            userEmail: userEmail,
          ));
    },
    child: Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50), // Circular card for the button
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Ensures the image fits within the card's rounded border
        child: Image.asset(
          "assets/images/AI_Bot_Logo.jpg",
          fit: BoxFit.cover, // Ensures the image fills the card entirely
        ),
      ),
    ),
  ),
)

      ),
    );
  }
}




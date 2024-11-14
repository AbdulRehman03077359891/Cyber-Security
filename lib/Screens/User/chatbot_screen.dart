// ignore_for_file: invalid_use_of_protected_member

import 'package:cyber_security_awareness_aibot/Controllers/chatbot_ai_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatScreen extends StatelessWidget {
  final String userUid, userName, userEmail;
  final AIChatController chatController = Get.put(AIChatController());
  final TextEditingController _messageController = TextEditingController();

  ChatScreen(
      {super.key,
      required this.userUid,
      required this.userName,
      required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(
            "AI Bot",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              shadows: [BoxShadow(blurRadius: 10, spreadRadius: 50,color: Colors.black)],
            ),
          ),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent),
      body: Stack(
        children: [
           Positioned.fill(
        child: Image.asset(
          "assets/images/AI_background.jpg", // Your image asset path
          fit: BoxFit.fitHeight, // Make the image cover the entire background
        ),
      ),
          
             Column(
               children: [
                 Expanded(
                  child: Obx(() {
                    // Use Obx to make the Chat widget reactive
                    return Chat(
                      messages: chatController
                          .messages.value, // Access the reactive list properly
                      onSendPressed: (types.PartialText message) {
                        chatController.sendMessage(message.text);
                        _messageController.clear();
                      },
                      user: const types.User(id: 'user-id'),
                      theme: const DefaultChatTheme(
                        backgroundColor: Colors.transparent,
                        inputBackgroundColor:  Color.fromARGB(255, 53, 67, 76),
                        primaryColor:  Color.fromARGB(255, 53, 67, 76),
                        inputTextColor: Colors.white,
                      ),
                    );
                  }),
                             
                           ),
               ],
             ),
        ],
      ),
    );
  }
}

// ignore_for_file: invalid_use_of_protected_member

import 'package:cyber_security_awareness_aibot/Controllers/chatbot_ai_controller.dart';
import 'package:cyber_security_awareness_aibot/Widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatScreen extends StatefulWidget {
  final String userUid, userName, userEmail;

  const ChatScreen(
      {super.key,
      required this.userUid,
      required this.userName,
      required this.userEmail});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final AIChatController chatController = Get.put(AIChatController());

  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    chatController.initSpeech();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                    shadows: [
                      BoxShadow(
                          blurRadius: 10, spreadRadius: 50, color: Colors.black)
                    ],
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
                    fit: BoxFit
                        .fitHeight, // Make the image cover the entire background
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      child: Chat(
                          messages: chatController
                              .messages.value, // Access the reactive list properly
                          onSendPressed: (types.PartialText message) {
                            chatController.sendMessage(message.text);
                            _messageController.clear();
                          },
                          user: const types.User(id: 'user-id'),
                          theme: const DefaultChatTheme(
                            backgroundColor: Colors.transparent,
                            inputBackgroundColor: Color.fromARGB(255, 53, 67, 76),
                            primaryColor: Color.fromARGB(255, 53, 67, 76),
                            inputTextColor: Colors.white,
                          ),
                          customBottomWidget: Container(
                            color: const Color.fromARGB(255, 53, 67, 76),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Row(
                              children: [
                                Obx( () {
                                    return Expanded(
                                        child: TextFieldWidget(
                                      focusBorderColor: Colors.white,
                                      errorBorderColor: Colors.red,
                                      controller: _messageController,
                                      textColor: Colors.white,
                                      hintText: chatController.isListening.value? (chatController.speechEnable.value? "Listening...":"Need Permission") : "Type your message...",
                                      hintColor: Colors.grey,
                                      fillColor: const Color.fromARGB(255, 53, 67, 76),
                                    ));
                                  }
                                ),
                                IconButton(
                                  icon: const Icon(Icons.send, color: Colors.white),
                                  onPressed: () {
                                    final text = _messageController.text.trim();
                                    if (text.isNotEmpty) {
                                      chatController.sendMessage(text);
                                      _messageController.clear();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        )
                      
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButton: chatController.isSpeaking.value
                  ? Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.12,
                          top: MediaQuery.of(context).size.height * .959),
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Toggle speech functionality when the button is pressed
                          chatController.stopSpeaking();
                        }, // Icon to indicate speech functionality
                        backgroundColor: const Color.fromARGB(255, 53, 67, 76),
                        elevation: 0,
                        child: const Icon(
                          Icons.volume_off,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.12,
                          top: MediaQuery.of(context).size.height * .959),
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: () {
                            chatController.speech.value.isListening? chatController.stopListening() : chatController.startListening((text) {
                            _messageController.text = text;
                          });
                        }, // Icon to indicate speech functionality
                        backgroundColor: const Color.fromARGB(255, 53, 67, 76),
                        elevation: 0,
                        child: Icon(
                          chatController.isListening.value? Icons.mic_off:
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    )
            );
      }
    );
  }
}

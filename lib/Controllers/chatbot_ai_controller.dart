import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cyber_security_awareness_aibot/Controllers/admin_controller.dart';
import 'package:cyber_security_awareness_aibot/Resources/bot_knowledge_base.dart';
import 'package:cyber_security_awareness_aibot/Resources/keywords_forms.dart';
import 'package:cyber_security_awareness_aibot/Resources/dictionary.dart';
import 'package:cyber_security_awareness_aibot/Resources/pronounciation_map.dart';
import 'package:cyber_security_awareness_aibot/Resources/singular_plural_map.dart';
import 'package:cyber_security_awareness_aibot/Resources/synonym_map.dart';
import 'package:cyber_security_awareness_aibot/Widgets/notification_message.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:uuid/uuid.dart';
import 'dart:math'; // To use Random for selecting responses

class AIChatController extends GetxController {
  final RxList<types.Message> messages = <types.Message>[].obs;
  final _user = const types.User(id: 'user-id');
  final _bot = const types.User(id: 'bot-id');

  final Random _random = Random();
  final FlutterTts flutterTts = FlutterTts();
  late final Rx<SpeechToText> speech = SpeechToText().obs;

  var isSpeaking = false.obs;  // Track the speaking state
  var speechEnable = false.obs;
  var isListening = false.obs;

  Timer? _inactivityTimer; // Timer for inactivity detection
  bool _isUserActive = true; // Track if the user is active
  late bool _isAnswering = false;
  String? timestamp;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  // Function to start inactivity timer
  void startInactivityTimer() {
    if (_inactivityTimer != null && _inactivityTimer!.isActive) {
      _inactivityTimer!.cancel(); // Cancel any existing timer
    }

    // Start a new timer that triggers after 15 seconds of inactivity
    _inactivityTimer = Timer(const Duration(seconds: 15), () {
      if (!_isUserActive) {
        _askRandomUnansweredQuestion(); // Ask unanswered questions if user is inactive
      }
    });
  }
  
   // Function to reset the activity state whenever the user interacts
  void onUserActivity() {
    _isUserActive = true; // User is active
    startInactivityTimer(); // Reset the inactivity timer
  }

  // Function to handle user inactivity (no interaction within 15 seconds)
  void onUserInactive() {
    _isUserActive = false; // User is inactive
    startInactivityTimer(); // Restart the inactivity timer
  }
  
  
// Function to ask a random unanswered question
void _askRandomUnansweredQuestion() async {
  final AdminController adminController = Get.put(AdminController());
  Map<String, dynamic>? randomQuestion = await adminController.fetchRandomUnansweredQuestions();

  if (randomQuestion == null) {
    _botReply("I have no new questions for you right now.",false);
    return;
  }

  String questionText = randomQuestion['question'];
  timestamp = randomQuestion['timestamp'];

  // Ask the random question to the user
  _botReply(questionText, true);

}


    //////  /////   //////   ////   //  //   
   //       //  //  //      //  //  // //    
   ///////  /////   ////    //////  ////     
        //  //      //      //  //  // //    
   //////   //      //////  //  //  //  //   
   // Speech-to-text instance
  Future<void> startSpeaking(String response) async {
    isSpeaking.value = true;  // Set the speaking state to true
    await flutterTts.setLanguage("ur-PK");
    await setFemaleVoice();
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.45);  // You can adjust the rate
    await flutterTts.setVolume(1);// Example: modify the response to adjust the pronunciation of AbdulRehman
  pronunciationMap.forEach((word, pronunciation) {
    response = response.replaceAll(word, pronunciation); // Replace words in the response dynamically based on the pronunciation map
  });

  await flutterTts.speak(response);
  isSpeaking.value = false;
  }
  Future<void> stopSpeaking() async {
    isSpeaking.value = false;  // Set the speaking state to true
    await flutterTts.stop();
  }
  Future<void> setFemaleVoice() async {
  List<dynamic> voices = await flutterTts.getVoices;
  for (var voice in voices) {
    if (voice.toString().contains("female") || voice.toString().contains("feminine")) {
      await flutterTts.setVoice(voice);
      break;
    }
  }
}

   //     ////  /////  ////// ////// ///   //
   //      //  //        //   //     ////  //
   //      //   /////    //   ////   // // //
   //      //      //    //   //     //  ////
   /////  //// /////     //   ////// //   ///
   // Text-to-speech
  Future<void> initSpeech() async {
    speechEnable.value = await speech.value.initialize();
    // isListening.value = true;
  }
  void startListening(Function(String) onSpeechResult) async {
            isListening.value = true;
            speechEnable.value?
    await speech.value.listen(onResult: (result) {
      if(speechEnable.value) {
        onSpeechResult(result.recognizedWords);
        isListening.value=false;
      }
      else{
        isListening.value = false;
      }
      }):notify("error", "Please provide permission");
  }
  void stopListening() async {
    await speech.value.stop();
    isListening.value = false;
  }

     
      ///////   //////    ///////     //      //
     ///        //  ///   //          //      //
      //////    //////    ////        //      //
          ///   //        //          //      //
     ///////    //        ///////     //////  //////
  String correctSpelling(String userMessage) {
    final messageWords = userMessage.split(' ');
    final correctedWords = messageWords.map((word) {
      return dictionary.contains(word.toLowerCase())
          ? word
          : _getClosestWord(word);
    }).toList();
    return correctedWords.join(' ');
  }

// Function to get the closest word using Levenshtein distance or any algorithm
  String _getClosestWord(String word) {
    String closestWord = word;
    int smallestDistance = word.length; // Start with the worst-case distance

    for (var dictWord in dictionary) {
      final distance = _levenshteinDistance(word.toLowerCase(), dictWord);
      if (distance < smallestDistance) {
        smallestDistance = distance;
        closestWord = dictWord;
      }
    }

    return closestWord;
  }

// Function to calculate Levenshtein distance (edit distance)
  int _levenshteinDistance(String s1, String s2) {
    final len1 = s1.length;
    final len2 = s2.length;
    final matrix =
        List.generate(len1 + 1, (i) => List<int>.filled(len2 + 1, 0));

    for (int i = 0; i <= len1; i++) {
      matrix[i][0] = i;
    }
    for (int j = 0; j <= len2; j++) {
      matrix[0][j] = j;
    }

    for (int i = 1; i <= len1; i++) {
      for (int j = 1; j <= len2; j++) {
        final cost = s1[i - 1] == s2[j - 1] ? 0 : 1;
        matrix[i][j] = [
          matrix[i - 1][j] + 1,
          matrix[i][j - 1] + 1,
          matrix[i - 1][j - 1] + cost
        ].reduce((a, b) => a < b ? a : b);
      }
    }

    return matrix[len1][len2];
  }


     //////   ////   /////   ////  ////   /////
     //      //  //  //  //  // //// //  // 
     /////   //  //  /////   //  //  //   ////
     //      //  //  //  //  //      //      //
     //       ////   //   // //      //  /////
// Function to check for keyword match, including Forms
  bool containsForms(String userMessage, String keyword) {
    // Convert user message to lowercase for case-insensitive comparison
    final messageWords = "${userMessage.toLowerCase()} ";
    // Retrieve the keyword forms, default to using the keyword if no forms exist
    final formsList = keywordFormsMap[keyword] ?? [keyword];

    // Check if any form (from the list of forms) exists in the user message
    for (var form in formsList) {
      if (messageWords.contains("$form ")) {
        return true;
      }
    }
    return false;
  }


    /////  //   //  ///   //   ////   ///   //  //   // ///    ///
   //       // //   ////  //  //  //  ////  //   // //  ////  ////
    /////    ///    // // //  //  //  // // //    ///   // //// //
        //   //     //  ////  //  //  //  ////    //    //  //  //
    /////   //      //   ///   ////   //   ///   //     //      //
// Function to check for keyword match, including synonyms
  bool containsSynonym(String userMessage, String word) {
    // Convert user message to lowercase for case-insensitive comparison
    final messageWords = userMessage.toLowerCase().split(' ');

    // Check if the keyword or its synonyms are in the user message
    for (var synonym in synonymMap[word] ?? [word]) {
      if (synonym == "") {
        return true;
      } else {
        if (messageWords.contains(synonym)) {
          return true;
        }
      }
    }
    return false;
  }


  /////   //// ///   //   /////  //  // //     ////  /////
 //        //  ////  //  //      //  // //    //  // //  //
  /////    //  // // //  //  /// //  // //    ////// /////
      //   //  //  ////  //   // //  // //    //  // //  //
  /////   //// //   ///   /////   ////  ///// //  // //  //
  
  /////  //    //  // /////   ////  //
  //  // //    //  // //  // //  // //
  /////  //    //  // /////  ////// //
  //     //    //  // // //  //  // //
  //     /////  ////  //  // //  // //////
String convertSentenceToPlural(String sentence) {
  List<String> words = sentence.split(" "); // Split the sentence into individual words
  List<String> pluralizedWords = [];

  for (var word in words) {
    pluralizedWords.add(convertToPlural(word)); // Convert each word to plural
  }

  return pluralizedWords.join(" "); // Reassemble the sentence with pluralized words
}

String convertToPlural(String word) {
  // Check if the word exists in the singularPluralMap and convert to plural
  if (singularPluralMap.containsKey(word)) {
    return singularPluralMap[word]![0]; // Return the first plural form
  }
  return word; // Return the word unchanged if no plural form is found
}

String convertSentenceToSingular(String sentence) {
  List<String> words = sentence.split(" "); // Split the sentence into individual words
  List<String> singularizedWords = [];

  for (var word in words) {
    singularizedWords.add(convertToSingular(word)); // Convert each word to singular
  }

  return singularizedWords.join(" "); // Reassemble the sentence with singularized words
}

String convertToSingular(String word) {
  // Check if the word has a plural form in the singularPluralMap and convert to singular
  for (var entry in singularPluralMap.entries) {
    if (entry.value.contains(word)) {
      return entry.key; // Return the singular form
    }
  }
  return word; // Return the word unchanged if no singular form is found
}

///    /// /////  /////   /////   ////    /////  /////
////  //// //    //      //      //  //  //      //
// //// // ////   /////   /////  //////  //  /// ////
//  //  // //         //      // //  //  //   // //
//      // /////  /////   /////  //  //   /////  /////

// Function to handle sending a message
  Future<void> sendMessage(String userMessage,) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: userMessage,
    );

    messages.insert(0, textMessage);
    
    
    if(_isAnswering){
      AdminController adminController = Get.put(AdminController()); 
      // Wait for user to respond (this depends on your UI interaction)
      String userResponse = userMessage; // Await user's response
      // Save the answer to Firebase
      await adminController.saveAnswerToFirebase(timestamp,userResponse);
    }else{
      // Reset inactivity timer when the user sends a message
      onUserActivity();
      _botBrain(userMessage);
    }
  }

  Future<void> _botReply(String response, bool isQuestioning) async {
    startSpeaking(response);
    final botMessage = types.TextMessage(
      author: _bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: response,
    );
    if(isQuestioning){
      _isAnswering = true;
    }else{
      _isAnswering = false;
    }
    // Add the bot's message after a short delay for a natural feel
    Future.delayed(const Duration(milliseconds: 500), () {
      messages.insert(0, botMessage);
      // stopSpeaking();
    });
  }

/////  /////   ////  //// ///   //
//  // //  // //  //  //  ////  //
/////  /////  //////  //  // // //
//  // //  // //  //  //  //  ////
/////  //  // //  // //// //   ///

// Function to generate a response from the bot based on user input
  void _botBrain(String userMessage) {
    // Correct spelling errors in the user message before proceeding
    userMessage = correctSpelling(userMessage);
    String? someDetectedKeyword;

    String response =
        "I'm not sure how to respond to that. Could you rephrase your question?";

    // Search through the knowledge base for a keyword match first
    for (var entry in botKnowledgeBase) {
      if (containsForms(userMessage, entry["keyword"])) {
        someDetectedKeyword = entry["keyword"];
        bool contextFound = false;

        // Check for word matches in the nested contexts within the "interrogator" key
        for (var interrogatorContext in entry["contexts"]) {
          if (containsSynonym(
              userMessage, interrogatorContext["interrogator"])) {
            for (var context in interrogatorContext["contexts"]) {
              // Match the word in context, considering synonyms
              if (containsSynonym(userMessage, context["word"])) {
                // Select a random response from the available responses
                List<String> responses =
                    List<String>.from(context["responses"]);
                response = responses[_random.nextInt(responses.length)];
                contextFound = true;
                break; // Exit if a context match is found
              }
            }

            // If no context matches were found under the interrogator, provide the default response
            if (!contextFound) {
              final defaultContext =
                  interrogatorContext["contexts"].firstWhere((context) {
                // Ensure the context is a Map<String, Object> and check if "word" is a String
                if (context is Map<String, Object> &&
                    context["word"] is String) {
                  return (context["word"] as String)
                      .isEmpty; // Cast to String before calling isEmpty
                }
                return false; // Return false if the context is not a Map<String, Object> or "word" is not a String
              },
                      orElse: () => {
                            "responses": [
                              "I'm not sure how to respond to that."
                            ]
                          });

              List<String> defaultResponses =
                  List<String>.from(defaultContext["responses"]);
              response =
                  defaultResponses[_random.nextInt(defaultResponses.length)];
            }
            break; // Exit once an interrogator context is matched
          }
        }
        break; // Exit once a keyword match is found
      }
    }

    // If no match was found in the original message, try converting to plural or singular
  if (response == "I'm not sure how to respond to that." ||
      response == "I'm not sure how to respond to that. Could you rephrase your question?") {
    // Check for singular words in the user message and convert to plural
    String pluralMessage = convertSentenceToPlural(userMessage);
    String singularMessage = convertSentenceToSingular(userMessage);

    // Check for keyword matches in the pluralized and singular forms
    for (var entry in botKnowledgeBase) {
      if (containsForms(pluralMessage, entry["keyword"]) || containsForms(singularMessage, entry["keyword"])) {
        bool contextFound = false;

        // Check for word matches in the nested contexts within the "interrogator" key
        for (var interrogatorContext in entry["contexts"]) {
          if (containsSynonym(pluralMessage, interrogatorContext["interrogator"]) ||
              containsSynonym(singularMessage, interrogatorContext["interrogator"])) {
            for (var context in interrogatorContext["contexts"]) {
              // Match the word in context, considering synonyms
              if (containsSynonym(pluralMessage, context["word"]) ||
                  containsSynonym(singularMessage, context["word"])) {
                // Select a random response from the available responses
                List<String> responses = List<String>.from(context["responses"]);
                response = responses[_random.nextInt(responses.length)];
                contextFound = true;
                break; // Exit if a context match is found
              }
            }

            if (!contextFound) {
              final defaultContext =
                  interrogatorContext["contexts"].firstWhere((context) {
                if (context is Map<String, Object> && context["word"] is String) {
                  return (context["word"] as String).isEmpty;
                }
                return false;
              },
                  orElse: () => {
                        "responses": [
                          "I'm not sure how to respond to that."
                        ]
                      });
              List<String> defaultResponses =
                  List<String>.from(defaultContext["responses"]);
              response =
                  defaultResponses[_random.nextInt(defaultResponses.length)];
            }
            break;
          }
        }
        break;
      }
    }
  }

    // Check for exact phrase matches if no keyword match was found
    if (response == "I'm not sure how to respond to that." ||
        response ==
            "I'm not sure how to respond to that. Could you rephrase your question?") {
      String? exactPhraseResponse = _checkForExactPhraseMatch(userMessage);
      if (exactPhraseResponse != null) {
        response = exactPhraseResponse;
      }
      else{
         // Handle the unanswered question
    AdminController adminController = AdminController();
    adminController.handleUnansweredQuestion(userMessage, someDetectedKeyword);
      }
    }

    
    // Prepare the bot's message
    _botReply(response, false);
  }

// Function to check for exact phrase matches
  String? _checkForExactPhraseMatch(String userMessage) {
    for (var context in defaultContexts) {
      for (var phrase in context["exact_phrases"] ?? []) {
        if (userMessage.toLowerCase().contains(phrase.toLowerCase())) {
          List<String> responses = List<String>.from(context["responses"]);
          return responses[_random.nextInt(responses.length)];

          // return context["response"]; // Return the matched response
        }
      }
    }
    return null; // No match found
  }

  final List<Map<String, dynamic>> defaultContexts = [
    // Existing contexts
    {
      "exact_phrases": ["who are you", "what is your name"],
      "responses": [
        "I am an AI chatbot, designed to assist you with various queries, especially around Flutter, Firebase, and more. You can call me your virtual assistant!",
        "I'm your AI helper, always here to provide assistance with anything you need!",
        "I’m an AI bot, your personal assistant for all things Flutter, Firebase, and more. Feel free to ask me anything!",
        "I'm just a friendly AI here to help you with tech questions and more. How can I assist you today?",
        "You can call me your virtual assistant! I’m here to help with Flutter, Firebase, and any tech-related questions.",
        "I’m an AI chatbot, created to guide you through your Flutter and Firebase projects with ease.",
        "I’m your go-to AI assistant! Let me know how I can help you with any of your tech needs."
      ]
    },
    {
      "exact_phrases": ["who made you", "who created you", "who developed you"],
      "responses": [
        "I was created by AbdulRehman Arain, a skilled Flutter developer with a passion for building smart, helpful tools.",
        "AbdulRehman Arain, a talented developer, is the one who created me to assist you!",
        "I owe my existence to AbdulRehman Arain, a developer with a passion for Flutter and Firebase!",
        "I was developed by AbdulRehman Arain, who has a knack for building cool tech tools like me!",
        "My creator is AbdulRehman Arain, a passionate developer who's all about making technology work for you.",
        "AbdulRehman Arain designed me to make your tech tasks a lot easier.",
        "I was crafted by AbdulRehman Arain, a developer who specializes in Flutter and Firebase!"
      ]
    },
    {
      "exact_phrases": ["why do you exist", "what is your purpose"],
      "responses": [
        "I exist to help answer your questions and assist you with tasks, especially related to software development and technical issues. Let me know how I can help!",
        "My purpose is to assist you with anything tech-related and answer all your questions, especially those about Flutter and Firebase!",
        "I’m here to provide helpful answers, tips, and guidance on all things Flutter, Firebase, and beyond!",
        "My purpose is simple: help you solve problems, answer questions, and make your life easier, especially with tech-related tasks.",
        "I exist to make tech simpler for you, whether it’s about coding, Firebase, or general guidance!",
        "I’m here to provide answers, solve your problems, and assist with your projects in any way I can.",
        "I exist to offer help and support whenever you need assistance with tech-related topics or tasks."
      ]
    },
    {
      "exact_phrases": ["are you human", "what are you"],
      "responses": [
        "I am not a human, but an AI assistant. I can help you with tasks like answering questions and providing information, much like a helpful human would!",
        "I’m not human, I’m an AI! But I’m here to help you just like a real person would.",
        "I’m an AI chatbot, not a human, but I’m designed to assist you with anything you need!",
        "I’m not human, but I’m an intelligent AI assistant created to make your tasks easier.",
        "I’m not human, I’m an AI program created to help answer your questions and assist with your projects.",
        "I’m your AI assistant, built to help you with whatever you need, but no, I’m not human.",
        "I’m an AI, created to help you with tasks and answer questions in the most human-like way possible!"
      ]
    },
    {
      "exact_phrases": ["what can you do", "how can you help me"],
      "responses": [
        "I can help with many things, from answering technical questions about Flutter and Firebase to providing general knowledge or guidance. Just ask me anything!",
        "I can assist you with Flutter development, Firebase configurations, answering general questions, and more. What do you need help with?",
        "I can help you troubleshoot your Flutter code, assist with Firebase issues, or just give you tech advice. What can I do for you?",
        "I can answer any questions related to programming, Firebase, app development, and more. How can I assist you today?",
        "I’m here to guide you through technical challenges, solve problems, and answer any questions you have about Flutter or Firebase!",
        "I can support you with development-related queries, share tips, and offer advice to help you succeed in your projects.",
        "From solving Flutter issues to answering questions about Firebase, I’m here to help in any way I can!"
      ]
    },
    {
      "exact_phrases": ["who created you", "who is your developer"],
      "responses": [
        "I was developed by AbdulRehman Arain, who has expertise in building useful applications and chatbots like me!",
        "I’m the creation of AbdulRehman Arain, a talented Flutter developer focused on building smart tech tools.",
        "My developer is AbdulRehman Arain, an experienced Flutter developer who designed me to assist you!",
        "AbdulRehman Arain is the developer behind me, and he’s passionate about creating helpful tech tools for you!",
        "I was created by AbdulRehman Arain, an expert in building Flutter-based applications and AI assistants like me.",
        "The genius behind me is AbdulRehman Arain, a Flutter developer dedicated to helping others with tech solutions.",
        "I owe my development to AbdulRehman Arain, who specializes in creating user-friendly apps and AI chatbots!"
      ]
    },
    {
      "exact_phrases": ["what's new", "what's happening"],
      "responses": [
        "Not much! I'm here to help you with any questions you have. What can I do for you?",
        "Not much on my end, but I’m always ready to assist you! What can I help you with today?",
        "Not much, but I’m here and ready to assist with whatever you need. How can I help?",
        "I’m just here, ready to provide answers to any questions or assist with anything you need!",
        "I’m always here to assist you with the latest tech-related info and solutions. What’s on your mind today?",
        "Not much, but I’m always available to help! What can I assist you with?",
        "Everything’s good here! Let me know how I can be of service to you today."
      ]
    }
  ];



}



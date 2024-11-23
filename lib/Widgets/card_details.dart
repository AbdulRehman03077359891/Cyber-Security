// Define a model class for Card details
import 'package:cyber_security_awareness_aibot/Screens/User/detail_screen.dart';
import 'package:eve_de_muslim_lite/Resources/bot_knowledge_base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDetail {
  final String title;
  final String description;
  final String imagePath;
  final Color color;
  final VoidCallback? navigate;

  CardDetail(
      {required this.title,
      required this.description,
      required this.imagePath,
      required this.color,
      required this.navigate});
}
//Color.fromARGB(255, 42, 44, 41)
//const Color.fromARGB(100, 28, 22, 24)
// Create a list of card details
final List<CardDetail> cardDetails = [
  CardDetail(
      title: 'Data Leakage',
      description: 'Protect your digital data',
      imagePath: 'assets/images/password_management.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[22])),
    ),
  CardDetail(
      title: 'Cyber Hygiene',
      description: 'Defend against viruses and malware',
      imagePath: 'assets/images/alert.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[26])),
    ),
  CardDetail(
      title: 'Man-in-the-Middle Attack',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/botnet.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[16])),
    ),
  CardDetail(
      title: 'Firewall',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/firewall.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[9])),
    ),
  CardDetail(
      title: 'Password Management',
      description: 'Protect your digital data',
      imagePath: 'assets/images/key.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[6])),
    ),
  CardDetail(
      title: 'Spyware',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/lock.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[14])),
    ),
  CardDetail(
      title: 'Malware',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/malware_protection.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[2])),
    ),
  CardDetail(
      title: 'Data Encryption',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/data.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[7])),
    ),
  CardDetail(
      title: 'Network Security',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/secure_network2.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[18])),
    ),
  CardDetail(
      title: 'IDS',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/data_protection2.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[20])),
    ),
  CardDetail(
      title: 'Botnet',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/botnet1.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[13])),
    ),
  CardDetail(
      title: 'Cyber Defense',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/shield2.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[28])),
    ),
  CardDetail(
      title: 'Antivirus',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/secure_network3.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[17])),
    ),
  CardDetail(
      title: 'Cyber Security',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/cyber.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[1])),
    ),
  CardDetail(
      title: 'Access Control',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/analizing.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[33])),
    ),
  CardDetail(
      title: 'Password Security',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/finger2.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[5])),
    ),
  CardDetail(
      title: 'DDoS',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/secure_network.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[19])),
    ),
  CardDetail(
      title: 'Cloud Security',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/cloud.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[24])),
    ),
  CardDetail(
      title: 'Secure Browsing',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/shield.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[25])),
    ),
  CardDetail(
      title: 'Phishing',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/safe_protection.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[3])),
    ),
  CardDetail(
      title: 'Ransomware',
      description: 'Secure your sensitive data',
      imagePath: 'assets/images/access_control.jpg',
      color: const Color.fromARGB(255, 26, 22, 27),
      navigate: () => Get.to(DetailScreen(topic: botKnowledgeBase[4])),
    ),
  // Add more card details as needed
];

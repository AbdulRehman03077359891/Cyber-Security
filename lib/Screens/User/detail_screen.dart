import 'package:cyber_security_awareness_aibot/Widgets/cyber_context_card.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> topic;

  const DetailScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic['keyword'],style: const TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: topic['contexts'].length,
        itemBuilder: (context, index) {
          var contextItem = topic['contexts'][index];
          return CyberContextCard(contextItem: contextItem);
        },
      ),
      backgroundColor: Colors.black87,
    );
  }
}
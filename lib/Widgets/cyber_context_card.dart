import 'package:flutter/material.dart';

class CyberContextCard extends StatelessWidget {
  final Map<String, dynamic> contextItem;

  CyberContextCard({required this.contextItem});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        contextItem['interrogator'].toUpperCase(),
        style: TextStyle(
          color: Colors.tealAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: contextItem['contexts'].map<Widget>((wordContext) {
        return ListTile(
          title: Text(
            wordContext['word'],
            style: TextStyle(color: Colors.white70),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: wordContext['responses']
                .map<Widget>((response) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "- $response",
                        style: TextStyle(color: Colors.tealAccent),
                      ),
                    ))
                .toList(),
          ),
        );
      }).toList(),
    );
  }
}
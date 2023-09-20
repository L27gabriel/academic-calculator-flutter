import 'package:flutter/material.dart';

class TextNote extends StatelessWidget {
  const TextNote({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, color: Colors.blue),
    );
  }
}

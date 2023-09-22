import 'package:calculadora_academica/components/text_note.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key, required this.textNote, required this.controller});

  final String textNote;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextNote(text: textNote),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1)),
          width: 300,
          child: TextField(
            controller: controller,
            textAlign: TextAlign.end,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}

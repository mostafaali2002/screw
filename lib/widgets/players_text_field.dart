import 'package:flutter/material.dart';

class PlayersTextField extends StatelessWidget {
  const PlayersTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 7,
      textAlign: TextAlign.right,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Name is empty';
        }
        return null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 15,
          )),
    );
  }
}

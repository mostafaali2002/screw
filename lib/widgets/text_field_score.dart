import 'package:flutter/material.dart';
import 'package:screw/constant.dart';

class TextFieldScore extends StatelessWidget {
  const TextFieldScore({
    super.key,
    required this.controller,
    this.onSubmitted,
  });
  final TextEditingController controller;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'empty';
        }
        return null;
      },
      onFieldSubmitted: onSubmitted,
      maxLength: 3,
      controller: controller,
      style: const TextStyle(fontSize: Style.ksizeScore),
      maxLines: 1,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          // hintText: "0",

          ),
    );
  }
}

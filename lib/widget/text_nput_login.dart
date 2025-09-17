import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;

  const TextInputWidget({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false, // default tidak hidden
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}

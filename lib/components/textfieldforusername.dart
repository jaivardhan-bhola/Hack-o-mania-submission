import 'package:flutter/material.dart';

class textfieldforusername extends StatelessWidget {
  final String hint;
  const textfieldforusername({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: hint,
      labelText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ));
  }
}

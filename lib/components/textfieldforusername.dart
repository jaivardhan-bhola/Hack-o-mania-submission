// ignore_for_file: camel_case_types

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
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ));
  }
}

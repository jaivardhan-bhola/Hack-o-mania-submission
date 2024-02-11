// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class ashbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>?
      actions; //yeh ? is used if the actions can be null as well
  const ashbar(
      {super.key,
      required this.title,
      this.actions}); //ab agar actions null bhi ho sakte hai then its not always mandatory to define them
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            )),
        centerTitle: false,
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

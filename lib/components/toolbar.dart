import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            )),
        centerTitle: false,
        actions: actions);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

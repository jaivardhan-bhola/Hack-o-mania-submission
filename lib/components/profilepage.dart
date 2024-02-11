// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:agrosnap/components/toolbar.dart';
import 'package:agrosnap/components/useravatar.dart';

//jai shree ram
enum profilemenu { edit, logout }

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ashbar(title: "Profile", actions: [
        PopupMenuButton<profilemenu>(
          onSelected: (value) {
            switch (value) {
              case profilemenu.edit:
                Navigator.of(context).pushNamed('/editprofilepage');
                break;
              case profilemenu.logout:
                break;
              default:
            }
          },
          itemBuilder: (context) {
            return [
              const PopupMenuItem(value: profilemenu.edit, child: Text("EDIT")),
              const PopupMenuItem(value: profilemenu.logout, child: Text("LOG OUT")),
            ];
          },
        )
      ]),
      body: const Column(
        children: [
          useravatar(size: 90),
          SizedBox(height: 24),
          Text("Ashu Rajput"),
          SizedBox(height: 12),
          Text("Bharat"),
          SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(children: [
              Text("472"),
              Text("Followers"),
            ]),
            Column(children: [
              Text("19"),
              Text("Posts"),
            ]),
            Column(children: [
              Text("500"),
              Text("Following"),
            ])
          ]),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}

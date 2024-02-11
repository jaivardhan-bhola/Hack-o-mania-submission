import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon/components/toolbar.dart';
import 'package:hackathon/components/useravatar.dart';

//jai shree ram
enum profilemenu { edit, logout }

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ashbar(title: "Profile", actions: [
        PopupMenuButton<profilemenu>(
          onSelected: (value) {
            switch (value) {
              case profilemenu.edit:
                print("edit button clicked");
                Navigator.of(context).pushNamed('/editprofilepage');
                break;
              case profilemenu.logout:
                print("log out button clicked");
                break;
              default:
                print("baawla hogya ke");
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("EDIT"), value: profilemenu.edit),
              PopupMenuItem(child: Text("LOG OUT"), value: profilemenu.logout),
            ];
          },
        )
      ]),
      body: Column(
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

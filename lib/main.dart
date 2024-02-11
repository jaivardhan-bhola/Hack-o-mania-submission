<<<<<<< HEAD
import 'package:agrosnap/pages/home.dart';
import 'package:agrosnap/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
Future main() async {
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Hive.openBox('user'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          } else if (Hive.box('user').isEmpty) {
            return const Onboarding();
          } else {
            return const Home();
          }
        },
      ),
=======
import 'package:flutter/material.dart';
import 'config/approutes.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Urbanist',
      ),
      initialRoute: '/',
      routes: AppRoutes.pages,
>>>>>>> c885b20f192e4ca4d5ce3fe1e1f311e51804bd9d
    );
  }
}

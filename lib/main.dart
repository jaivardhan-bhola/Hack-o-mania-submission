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
    );
  }
}

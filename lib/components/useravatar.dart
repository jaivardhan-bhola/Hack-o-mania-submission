import 'package:flutter/cupertino.dart';

class useravatar extends StatelessWidget {
  // final double width;
  // final double height;
  final double size;
  //as hamara jo shape hai voh square hai so width and height alag alag karne ki jaroorat nahi hai so we just made one size
  const useravatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.elliptical(26, 36),
        ),
        child: Image.asset('assets/images/as1.png', width: size, height: size));
  }
}

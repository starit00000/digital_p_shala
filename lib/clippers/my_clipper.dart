import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 230);
    path.quadraticBezierTo(
        size.width / 4, 180, size.width / 2, 190);
    path.quadraticBezierTo(
        3 / 4 * size.width, 200, size.width, 110);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
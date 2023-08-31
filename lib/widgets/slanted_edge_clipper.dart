import 'package:flutter/material.dart';

class SlantedEdgeClipper extends CustomClipper<Path> {
  final double slantHeight;

  SlantedEdgeClipper(this.slantHeight);

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
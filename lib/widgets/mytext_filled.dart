import 'package:flutter/material.dart';

class MyTextFilled extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextFilled({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.06),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFF5F5F5),
              hintText: hintText
          ),
        ),
      ),
    );
  }
}
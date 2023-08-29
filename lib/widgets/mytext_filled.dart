import 'package:flutter/material.dart';

class MyTextFilled extends StatelessWidget {
  const MyTextFilled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white
        ),
      ),
    );
  }
}
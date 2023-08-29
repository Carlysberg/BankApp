import 'package:bank/screens/Auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bank());
}

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

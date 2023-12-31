import 'dart:async';

import 'package:bank/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pop(context);
      Navigator.push(
        context, MaterialPageRoute(
          builder: (context)=>const HomeScreen()
      )
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Image.asset('assets/images/Loading.png')),
    );
  }
}


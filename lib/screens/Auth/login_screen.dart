import 'package:bank/screens/Auth/forgot_password_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';
import '../../widgets/mytext_filled.dart';
import '../splash_screen.dart';

class LoginScreen extends StatelessWidget {

  //textFilled controllers

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xFF022E64),
                  Color(0xFF004395),
                  Color(0xFF00408F)
                ])
        ),
         child: Center(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(height: screenHeight*0.1),
                 //logo
                 SizedBox(
                     height: screenHeight*0.1,
                     width: screenWidth*0.4,
                     child: Image.asset('assets/images/bankLogo.png')
                 ),

                 SizedBox(height: screenHeight*0.1),

                 //email
                 MyTextFilled(
                   controller: emailController,
                   hintText: "Username",
                   obscureText: false,
                 ),

                 SizedBox(height: screenHeight*0.025),

                 //password
                 MyTextFilled(
                   controller: passwordController,
                   hintText: "Password",
                   obscureText: true,
                 ),

                 SizedBox(height: screenHeight*0.1),

                 //loginButton
                 MyButton(
                   label: 'Login',
                   onPressed: (){
                     Navigator.pop(context);
                     Navigator.push (
                       context,
                       MaterialPageRoute (
                         builder: (BuildContext context) => const SplashScreen(),
                       ),
                     );
                   },
                 ),
                 SizedBox(height: screenHeight*0.25),
                 TextButton(
                   child: const Text('Forgot Password?',
                   style: TextStyle(
                     fontFamily: 'OpenSans',
                     color: Color(0xFFF5F5F5)
                   ),),
                   onPressed: () {
                     Navigator.push (
                       context,
                       MaterialPageRoute (
                         builder: (BuildContext context) => ForgotPassword(),
                       ),
                     );
                   },
                 )
               ],
             ),
           ),
         ),
      ),
    );
  }
}

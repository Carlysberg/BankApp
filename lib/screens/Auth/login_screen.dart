import 'package:flutter/material.dart';

import '../../widgets/mytext_filled.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
         child: Padding(
           padding: EdgeInsets.fromLTRB(
               screenWidth*0.06, screenHeight*0.15, screenWidth*0.06, screenHeight*0.1),
           child: Column(
             children: [
               //logo
               SizedBox(
                 height: screenHeight*0.1,
                 width: screenWidth*0.4,
                 child: Image.asset('images/bankLogo.png')
               ),

               SizedBox(height: screenHeight*0.1),
               //email
               MyTextFilled(),
               //password

               //loginButton
             ],
           ),
         ),
      ),
    );
  }
}
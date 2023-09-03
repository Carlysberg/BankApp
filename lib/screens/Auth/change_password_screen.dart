import 'package:bank/screens/home_screen.dart';
import 'package:flutter/material.dart';
import '../../widgets/my_button.dart';
import '../../widgets/mytext_filled.dart';

class ChangePassword extends StatelessWidget {

  //textFilled controllers

  final newpassController = TextEditingController();
  final confirmpassController = TextEditingController();
  final oldpassController = TextEditingController();

  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF022E64),
        leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: const[
                Icon(Icons.arrow_back_ios_new,
                  color: Color(0xFFFFFFFF),
                ),
                Text('Back',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF)
                  ),
                )
              ],
            ),
          ),
        ),
        leadingWidth: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/bankLogo.png'),
          )
        ],
      ),
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
                SizedBox(height: screenHeight*0.2),

                MyTextFilled(
                  controller: oldpassController,
                  hintText: "Old Password",
                  obscureText: false,
                ),

                SizedBox(height: screenHeight*0.025),

                //new password
                MyTextFilled(
                  controller: newpassController,
                  hintText: "New Password",
                  obscureText: false,
                ),

                SizedBox(height: screenHeight*0.025),

                //confirm new password
                MyTextFilled(
                  controller: confirmpassController,
                  hintText: "Confirm New Password",
                  obscureText: true,
                ),

                SizedBox(height: screenHeight*0.1),

                //loginButton
                MyButton(
                  label: 'Change Password',
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push (
                      context,
                      MaterialPageRoute (
                        builder: (BuildContext context) => const HomeScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight*0.25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:bank/Consts/text_styles.dart';
import 'package:bank/screens/Auth/change_password_screen.dart';
import 'package:bank/screens/Auth/login_screen.dart';
import 'package:bank/widgets/slanted_edge_clipper.dart';
import 'package:flutter/material.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        children: [
          //----------------------------------
          //user details
          //----------------------------------
          Container(
            color: Colors.yellow.shade50,
            child: Row(
              children: [
                Expanded(
                    child: ClipPath(
                      clipper: SlantedEdgeClipper(156),
                      child: SizedBox(
                        child: Image.asset('assets/images/profileImgBig.png',
                          fit: BoxFit.cover),
                      ),
                    ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //----------------------------------
                            //details on the left side
                            //----------------------------------
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('FIRST NAME',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                Text('JOHN',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text('GENDER',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                Text('MALE',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text('ID',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                Text('23399922',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                              ],
                            ),
                            //----------------------------------
                            //details on the right side
                            //----------------------------------
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('OTHER NAMES',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                Text('JIMOH',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text('TITLE',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                                Text('MR',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'OpenSans',
                                      color: Color(0xFF022E64).withOpacity(0.8)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                       ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //----------------------------------
          //account settings
          //----------------------------------
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Account Settings'),
                tileColor: const Color(0xFFE1E6F0).withOpacity(0.32),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push (
                    context,
                    MaterialPageRoute (
                      builder: (BuildContext context) => ChangePassword(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Material(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      title: const Text('Change Account Password',
                      style: kTextStyle400,
                      ),
                      leading: Image.asset('assets/images/lock.png'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.push (
                    context,
                    MaterialPageRoute (
                      builder: (BuildContext context) => LoginScreen(),
                    ),
                  );
                 },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Material(
                    elevation: 2,
                    shadowColor: Colors.white54,
                    child: ListTile(
                      title: const Text('Logout',
                      style: kTextStyle400,
                      ),
                      leading: Image.asset('assets/images/logout.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //----------------------------------
          //about
          //----------------------------------
          Column(
            children: [
              ListTile(
                title: const Text('About'),
                tileColor: const Color(0xFFE1E6F0).withOpacity(0.32),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 2.0),
                child: Material(
                  elevation: 2,
                  shadowColor: Colors.white54,
                  child: ListTile(
                    title: Text('Terms and Conditions',
                    style: kTextStyle400,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 2.0),
                child: Material(
                  elevation: 2,
                  shadowColor: Colors.white54,
                  child: ListTile(
                    title: Text('Privacy Policy',
                      style: kTextStyle400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


    );
  }

}

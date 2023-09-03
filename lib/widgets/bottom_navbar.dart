import 'package:bank/widgets/slanted_edge_button.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {

  Color kActiveBarColor() => const Color(0xFF022E64);
  Color kInactiveBarColor() => const Color(0xFFFFFFFF);
  Color kActiveIconColor() => const Color(0xFFE6B014);
  Color kInactiveIconColor() => const Color(0xFF022E64);

  final VoidCallback leftOnPressed;
  final VoidCallback rightOnPressed;

  const MyBottomNavBar({
    Key? key,
    required this.leftOnPressed,
    required this.rightOnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kInactiveBarColor(),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //------------------------------------
          // button on the left
          //------------------------------------
          Expanded(
            child: SlantedEdgeButton(
              slantHeight: 72,
              buttonColor: kActiveBarColor(),
              icon: Image.asset('assets/images/homeIcon.png',
                color: kActiveIconColor(),
              ),
              text: Text('Home',
                  style: TextStyle(
                      color: kActiveIconColor(),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                      letterSpacing: 0.5
                  )
              ),
              onPressed: leftOnPressed
            ),
          ),
          //------------------------------------
          // button on the right
          //------------------------------------
          Expanded(
              child: MaterialButton(
                onPressed: rightOnPressed,
                child: SizedBox(
                  height: 72,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/transacImg.png',
                      color: kInactiveIconColor(),
                      ),
                      Text('Transactions',
                          style: TextStyle(
                              color: kInactiveIconColor(),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSans',
                              letterSpacing: 0.5
                          )
                      ),
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}


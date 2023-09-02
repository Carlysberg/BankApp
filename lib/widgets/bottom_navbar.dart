import 'package:bank/widgets/slanted_edge_button.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {

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
      color: const Color(0xFFFFFFFF),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SlantedEdgeButton(
              slantHeight: 72,
              buttonColor: const Color(0xFF022E64),
              icon: Image.asset('images/homeIcon.png',
                color: const Color(0xFFE6B014),
              ),
              text: const Text('Home',
                  style: TextStyle(
                      color: Color(0xFFE6B014),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                      letterSpacing: 0.5
                  )
              ),
              onPressed: leftOnPressed
            ),
          ),
          Expanded(
              child: MaterialButton(
                onPressed: rightOnPressed,
                child: SizedBox(
                  height: 72,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/transacImg.png'),
                      const Text('Transactions',
                          style: TextStyle(
                              color: Color(0xFF022E64),
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


import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {

  final accountBalance;

   const BalanceCard({
    Key? key,
    required this.accountBalance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight*0.25,
      child: Column(
        children: [
          Container(
            height: screenHeight*0.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFFE0AD0F),
                    Color(0xFFA07801),
                  ]
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/Vector.png',
                    fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Account Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFFFFFF).withOpacity(0.8)
                        ),
                      ),
                      SizedBox(height: screenHeight*0.025),
                      Text('GHC $accountBalance',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),),
                      SizedBox(height: screenHeight*0.025),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Checking Account',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFFFFFFF).withOpacity(0.8)
                            ),
                          ),
                          Text('875431143137098707',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFFFFFFF).withOpacity(0.8)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xFFE1E6F0),
            height: screenHeight*.05,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recent Transactions',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xFF001530),
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: const Text('See All',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xFF001530),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

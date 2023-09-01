import 'package:flutter/material.dart';

import '../widgets/balance_card.dart';
import '../widgets/slanted_edge_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF022E64),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset('images/profileImg.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good morning',
                  style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.8),
                      fontFamily: 'OpenSans',
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  )
              ),
              const Text('Mr. John Jimoh',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.w600
              )
                ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/bankLogo.png'),
          )
        ],
      ),
      body: Column(
        children: [
          const BalanceCard(accountBalance: '10,000.00'),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(

                  )
                ],
              ),
              ),
          ),
          Container(
            color: Color(0xFFFFFFFF),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SlantedEdgeButton(
                      slantHeight: 72,
                      buttonColor: Color(0xFF022E64),
                      icon: Image.asset('images/homeIcon.png',
                        color: Color(0xFFE6B014),
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
                      onPressed: (){

                      },
                    ),
                ),
                Expanded(
                    child: MaterialButton(
                      onPressed: (){},
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
          )
        ],
      ),
    );
  }
}


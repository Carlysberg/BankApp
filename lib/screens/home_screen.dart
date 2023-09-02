import 'package:bank/screens/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/balance_card.dart';
import '../widgets/bottom_navbar.dart';

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
      bottomNavigationBar: MyBottomNavBar(
        leftOnPressed: () {
          Navigator.pop(context);
          Navigator.push (
            context,
            MaterialPageRoute (
              builder: (BuildContext context) => const HomeScreen(),
            ),
          );
        },
        rightOnPressed: () {
          Navigator.pop(context);
          Navigator.push (
            context,
            MaterialPageRoute (
              builder: (BuildContext context) => const TransactionScreen(),
            ),
          );
        },
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
        ],
      ),
    );
  }
}


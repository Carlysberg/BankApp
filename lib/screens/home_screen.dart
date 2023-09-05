import 'dart:convert';

import 'package:bank/screens/transaction_screen.dart';
import 'package:bank/widgets/gift_tile.dart';
import 'package:bank/widgets/inflow_tile.dart';
import 'package:flutter/material.dart';

import '../widgets/balance_card.dart';
import '../widgets/bottom_navbar.dart';
import 'account_details_screen.dart';
const String staticData = '{"customerID": "23399922","customerName": "John Jimoh","gender": "MALE","title": "Mr."}';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF022E64),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset('assets/images/profileImg.png'),
        ),
        title: GestureDetector(
          onTap: (){
            Navigator.push (
              context,
              MaterialPageRoute (
                builder: (context) => const AccountDetailsScreen(),
              ),
            );
          },
          child: Padding(
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
                Text(jsonDecode(staticData)['title']+' '+jsonDecode(staticData)['customerName'],
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    )
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/bankLogo.png'),
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
                children: const [
                  GiftListTile(),
                  InflowTile(),
                  GiftListTile(),
                  InflowTile(),

                ],
              ),
              ),
          ),
        ],
      ),
    );
  }
}


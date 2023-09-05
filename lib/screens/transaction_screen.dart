import 'dart:convert';
import 'package:bank/screens/account_details_screen.dart';
import 'package:bank/widgets/gift_tile.dart';
import 'package:bank/widgets/inflow_tile.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import 'home_screen.dart';

const String staticData = '{"customerID": "23399922","customerName": "John Jimoh","gender": "MALE","title": "Mr."}';


class TransactionScreen extends StatelessWidget {
   const TransactionScreen({Key? key}) : super(key: key);

  final List<Tab> tabs = const[
    Tab(text: 'All'),
    Tab(text: 'Debit'),
    Tab(text: 'Credit'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
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
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/images/bankLogo.png'),
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(96),
              child: Container(
                color: const Color(0xFFE1E6F0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16,top: 16),
                      child: Text('Transactions',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                    TabBar(tabs: tabs,
                      indicatorColor: const Color(0xFF022E63), // TabBar indicator color
                      labelColor: const Color(0xFF001530),
                    ),
                  ],
                ),
              ),
            ),
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
          body: TabBarView(
              children: [
                ListView(
                  children: const [
                    GiftListTile(),
                    InflowTile(),
                    GiftListTile(),
                    InflowTile(),


                  ],
                ),
                ListView(
                  children: const [
                    GiftListTile(),
                    GiftListTile(),
                  ],
                ),
                ListView(
                  children: const [
                    InflowTile(),
                    InflowTile(),


                  ],
                ),

              ]
          ),
        ),
      );
  }
}


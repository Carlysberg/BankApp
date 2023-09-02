import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';
import 'home_screen.dart';

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
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(87),
                  child: Container(
                      color: Color(0xFFE1E6F0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16,top: 16),
                            child: Text('Transactions',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),),
                          ),
                          TabBar(tabs: tabs,
                            indicatorColor: Color(0xFF022E63), // TabBar indicator color
                            labelColor: Color(0xFF001530),
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
                children: [
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(),
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Icon(Icons.info),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    title: Text('Kwasia'),
                    tileColor: Color(0xFFE1E6F0).withOpacity(0.6),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    title: Text('Kwasia'),
                    tileColor: Color(0xFFE1E6F0).withOpacity(0.6),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    title: Text('Kwasia'),
                    tileColor: Color(0xFFE1E6F0).withOpacity(0.6),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    title: Text('Kwasia'),
                    tileColor: Color(0xFFE1E6F0).withOpacity(0.6),
                    textColor: Colors.white,
                  ),


                ],
              ),
              ListView(),
              ListView(),

            ]
        ),
      ),
    );
  }
}

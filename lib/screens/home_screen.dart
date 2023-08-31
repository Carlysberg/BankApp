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
        title: const Text('Good Morning',
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 20,
          fontWeight: FontWeight.w600
        )
          ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: "Build",
                icon: SlantedEdgeButton(
                    slantHeight: 50,
                    text: "e",
                    onPressed: (){}
                ),),
            BottomNavigationBarItem(
                label: "build",
                icon: Icon(Icons.build)),

      ]),
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
        child: Column(
          children: [
            const BalanceCard(accountBalance: '10,000.00'),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    SlantedEdgeButton(
                      slantHeight: 50,
                      text: 'Slanted Button',
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                    SizedBox(height: 35),
                    SlantedEdgeButton(
                      slantHeight: 50,
                      text: 'Slanted Button',
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                  ],
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}


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
            color: Color(0xFFFFbbFF),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SlantedEdgeButton(
                      slantHeight: 72,
                      icon: Icon(Icons.home,
                      color: Color(0xFFE6B014),
                      ),
                      text: Text('data',
                        style: TextStyle(
                          color: Color(0xFFE6B014)
                        )
                      ),
                      onPressed: (){

                      }, 
                    ),
                ),
                Expanded(
                    child: MaterialButton(
                      onPressed: (){},
                      child: Container(
                        height: 72,
                        color: const Color(0xFFFFbbFF),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.home,
                                  color: Color(0xFFE6B014),
                                ),
                                Text('data',
                                    style: TextStyle(
                                        color: Color(0xFFE6B014)
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


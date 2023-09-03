import 'package:flutter/material.dart';

class InflowTile extends StatelessWidget {
  const InflowTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //---------------------------
        //modal bottom sheet
        //---------------------------
        showModalBottomSheet(context: context, builder: (context)=>Container(
          color: Color(0xFF757575),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                  child: Text('Transaction Details',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                ListTile(
                  leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Balance Before Transaction',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('Balance After Transaction',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      )
                    ],
                  ),
                  trailing: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('GHC 0.00',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('GHC 10,000.00',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Transaction Date',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('Transaction Direction',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('Transaction Narration',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                    ],
                  ),
                  trailing: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Date',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('Credit',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      ),
                      Text('Deposit',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xFF212121)
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
      //------------------------------
      //Inflow list tile
      //------------------------------
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Material(
          elevation: 2,
          shadowColor: Colors.white54,
          child: ListTile(
            leading: Image.asset('assets/images/inflow.png'),
            //contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            title: Row(
              children: [
                Text('GHC 50.00',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                  ),
                ),
                SizedBox(width: 7),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE0AD0F).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Credit',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 9,
                          letterSpacing: 0.18
                      ),
                    ),
                  ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                Text('#',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xFF022E64)
                  ),
                ),
                Text('Gift',
                  style: const TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 0.18
                  ),
                ),
              ],
            ),
            trailing: Text('date',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF616161)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

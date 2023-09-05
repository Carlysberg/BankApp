import 'package:flutter/material.dart';

class GiftListTile extends StatelessWidget {
  const GiftListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //------------------------------
        //modal bottom sheet
        //------------------------------
        showModalBottomSheet(context: context, builder: (context)=>Container(
          color: const Color(0xFF757575),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32))
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
                  child: Text('Transaction Details',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w400
                  ),
                  ),
                ),
                ListTile(
                  leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
                    children: const [
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
                    children: const [
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
                    children: const [
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
      //gift tile
      //------------------------------
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Material(
          elevation: 2,
          shadowColor: Colors.white54,
          child: ListTile(
            leading: Image.asset('assets/images/gift.png'),
            title: Row(
              children: [
                const Text('GHC 50.00',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                  ),
                ),
                const SizedBox(width: 7),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF78C8E1).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Debit',
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
              children: const [
                Text('#',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xFF022E64)
                  ),
                ),
                Text('Gift',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      letterSpacing: 0.18
                  ),
                ),
              ],
            ),
            trailing: const Text('date',
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

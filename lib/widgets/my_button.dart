import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.label, required this.onPressed,
  }) : super(key: key);

  final String label;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: onPressed,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  color: const Color(0xFFE6B014),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Center(
                child: Text(label,
                  style: const TextStyle(
                      letterSpacing: 0.2,
                      color: Color(0xFF212121),
                      fontFamily: 'OpenSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
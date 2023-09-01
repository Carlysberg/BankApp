import 'package:bank/widgets/slanted_edge_clipper.dart';
import 'package:flutter/material.dart';

class SlantedEdgeButton extends StatelessWidget {
  final double slantHeight;
  final Widget text;
  final VoidCallback onPressed;
  final Widget icon;
  final Color buttonColor;

  const SlantedEdgeButton({super.key,
    required this.slantHeight,
    required this.text,
    required this.onPressed,
    required this.icon,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SlantedEdgeClipper(slantHeight),
      child: Container(
        height: slantHeight,
        color: buttonColor,
        child: MaterialButton(
          onPressed: onPressed,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              text
            ],
          ),
        ),
      ),
    );
  }
}

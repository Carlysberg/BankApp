import 'package:bank/widgets/slanted_edge_clipper.dart';
import 'package:flutter/material.dart';

class SlantedEdgeButton extends StatelessWidget {
  final double slantHeight;
  final Widget text;
  final VoidCallback onPressed;
  final Widget icon;

  SlantedEdgeButton({
    required this.slantHeight,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SlantedEdgeClipper(slantHeight),
      child: Container(
        height: slantHeight,
        color: Colors.blue,
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

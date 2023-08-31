import 'package:bank/widgets/slanted_edge_clipper.dart';
import 'package:flutter/material.dart';

class SlantedEdgeButton extends StatelessWidget {
  final double slantHeight;
  final String text;
  final VoidCallback onPressed;

  SlantedEdgeButton({
    required this.slantHeight,
    required this.text,
    required this.onPressed,
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
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

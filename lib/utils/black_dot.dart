import 'package:flutter/material.dart';

class BlackDot extends StatelessWidget {
  const BlackDot({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

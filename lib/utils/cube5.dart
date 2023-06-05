import 'package:dice_roller/utils/black_dot.dart';
import 'package:flutter/material.dart';

class Cube5 extends StatelessWidget {
  const Cube5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BlackDot(),
                BlackDot(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const BlackDot(),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                BlackDot(),
                BlackDot(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

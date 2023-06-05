import 'dart:math';
import 'package:dice_roller/utils/cube1.dart';
import 'package:dice_roller/utils/cube2.dart';
import 'package:dice_roller/utils/cube3.dart';
import 'package:dice_roller/utils/cube4.dart';
import 'package:dice_roller/utils/cube5.dart';
import 'package:dice_roller/utils/cube6.dart';
import 'package:flutter/material.dart';

Random randomizer = Random();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget current = const Cube6();
  void roller() {
    var number = randomizer.nextInt(6) + 1;
    if (number == 1) {
      setState(() {
        current = const Cube1();
      });
    } else if (number == 2) {
      setState(() {
        current = const Cube2();
      });
    } else if (number == 3) {
      setState(() {
        current = const Cube3();
      });
    } else if (number == 4) {
      setState(() {
        current = const Cube4();
      });
    } else if (number == 5) {
      setState(() {
        current = const Cube5();
      });
    } else if (number == 6) {
      setState(() {
        current = const Cube6();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          current,
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      40,
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              onPressed: () {
                roller();
              },
              child: const Center(
                child: Text(
                  "Roll Dice",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

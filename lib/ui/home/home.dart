import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 64, 6, 131),
              Color.fromARGB(255, 31, 3, 63),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(100),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2,
                    offset: Offset(2, 2),
                    color: Colors.black26,
                  ),
                ],
              ),
              child: DiceNumber(diceNumber: dice),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.3),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  dice = Random().nextInt(6) + 1;
                });
              },
              child: const Text(
                'Roll',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DiceNumber extends StatelessWidget {
  const DiceNumber({
    super.key,
    required this.diceNumber,
  });

  final int diceNumber;

  @override
  Widget build(BuildContext context) {
    List<Color> diceNumberColor = [
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
    ];

    List<Color> colorDiceOne = [
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
    ];

    List<Color> colorDiceTwo = [
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
    ];

    List<Color> colorDiceThree = [
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
    ];

    List<Color> colorDiceFour = [
      Colors.black,
      Colors.black,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.black,
      Colors.black,
    ];

    List<Color> colorDiceFive = [
      Colors.black,
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.black,
    ];

    List<Color> colorDiceSix = [
      Colors.black,
      Colors.black,
      Colors.black,
      Colors.transparent,
      Colors.black,
      Colors.black,
      Colors.black,
    ];

    switch (diceNumber) {
      case 1:
        {
          diceNumberColor = colorDiceOne;
        }
        break;

      case 2:
        {
          diceNumberColor = colorDiceTwo;
        }
        break;

      case 3:
        {
          diceNumberColor = colorDiceThree;
        }
        break;

      case 4:
        {
          diceNumberColor = colorDiceFour;
        }
        break;

      case 5:
        {
          diceNumberColor = colorDiceFive;
        }
        break;

      case 6:
        {
          diceNumberColor = colorDiceSix;
        }
        break;

      default:
        {
          diceNumberColor = colorDiceOne;
        }
        break;
    }

    return Stack(
      children: [
        Positioned(
          top: 15,
          left: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[0]),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[1]),
          ),
        ),
        Positioned(
          top: 65,
          left: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[2]),
          ),
        ),
        Positioned(
          top: 65,
          right: 65,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[3]),
          ),
        ),
        Positioned(
          top: 65,
          right: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[4]),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[5]),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99999),
                color: diceNumberColor[6]),
          ),
        ),
      ],
    );
  }
}

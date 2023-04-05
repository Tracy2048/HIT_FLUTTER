// import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class FreakingMath extends StatefulWidget {
  const FreakingMath({super.key});

  @override
  State<FreakingMath> createState() => _FreakingMathState();
}

class _FreakingMathState extends State<FreakingMath> {
  int status = 0; //0: start, 1: play, 2: end
  int score = 0;
  int bestScore = 0;
  int time = 10;
  late int x1, x2;
  late int correctAns, ans;
  late String operator;
  // late Timer timer;
  List<String> list = ["+", "-", "x", "/"];

  @override
  Widget build(BuildContext context) {
    return status == 0
        ? startGame()
        : status == 1
            ? playGame()
            : endGame();
  }

  Container startGame() {
    return Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "FREAKING MATH",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              score = 0;
              status = 1;
              createExpression();
              setState(() {});
            },
            child: const Text(
              "Play",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container playGame() {
    return Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$score",
                  style: const TextStyle(fontSize: 26, color: Colors.white),
                )
              ],
            ),
            Text(
              "$x1 $operator $x2 = $ans",
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  //Button dung
                  onPressed: () {
                    if (ans == correctAns) {
                      score++;
                      createExpression();
                    } else {
                      status = 2;
                      bestScore = max(bestScore, score);
                    }
                    setState(() {});
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 70,
                    color: Colors.red,
                  ),
                ),
                TextButton(
                  //Button sai
                  onPressed: () {
                    if (ans != correctAns) {
                      score++;
                      createExpression();
                    } else {
                      status = 2;
                      bestScore = max(bestScore, score);
                    }
                    setState(() {});
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: const Icon(
                    Icons.clear,
                    size: 70,
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Container endGame() {
    return Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Game Over",
            style: TextStyle(
              fontSize: 64,
              color: Colors.white,
            ),
          ),
          Text(
            "Your score: $score",
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          Text(
            "Best score: $bestScore",
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              score = 0;
              status = 1;
              createExpression();
              setState(() {});
            },
            child: const Icon(
              Icons.refresh_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  createExpression() {
    x1 = Random().nextInt(20);
    x2 = Random().nextInt(20);
    operator = list[Random().nextInt(list.length)];
    switch (operator) {
      case '+':
        correctAns = x1 + x2;
        break;
      case '-':
        correctAns = x1 - x2;
        break;
      case '*':
        correctAns = x1 * x2;
        break;
      case '/':
        correctAns = x1 ~/ x2;
        break;
    }
    ans = correctAns + Random().nextInt(2) - 1;
  }
}

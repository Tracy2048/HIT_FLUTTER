import 'package:flutter/material.dart';

class Meal extends StatelessWidget {
  const Meal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Quick & Easy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container dish(String name, String time, String complexity,
      String affordability, String url) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        Image.network(url),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.black,
                ),
                Text(time),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                Text(complexity),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.attach_money,
                  color: Colors.black,
                ),
                Text(affordability),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

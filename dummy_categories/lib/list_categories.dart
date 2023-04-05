import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
                    Icons.list,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              item("Italian", Colors.purple),
              item("Quick & Easy", Colors.red),
              item("Hamburgers", Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              item("German", Colors.amber),
              item("Light & Lovely", Colors.blue),
              item("Exotic", Colors.green),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              item("Breakfast", Colors.lightBlue),
              item("Asian", Colors.lightGreen),
              item("French", Colors.pink),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              item("Summer", Colors.teal),
            ],
          ),
        ],
      ),
    );
  }

  Container item(String text, Color color) {
    return Container(
      height: 74,
      width: 138,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'menu.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.list),
          onPressed: () {},
        ),
        title: const Text("Categories"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              item("Italian", Colors.purple, context),
              item("Quick & Easy", Colors.red, context),
              item("Hamburgers", Colors.orange, context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              item("German", Colors.amber, context),
              item("Light & Lovely", Colors.blue, context),
              item("Exotic", Colors.green, context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              item("Breakfast", Colors.lightBlue, context),
              item("Asian", Colors.lightGreen, context),
              item("French", Colors.pink, context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              item("Summer", Colors.teal, context),
            ],
          ),
        ],
      ),
    );
  }

  Container item(String text, Color color, BuildContext context) {
    return Container(
      height: 74,
      width: 120,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: TextButton(
        onPressed: () {
          if (text == "Quick & Easy") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Menu()));
          }
        },
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

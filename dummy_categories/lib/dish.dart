import 'package:flutter/material.dart';
import 'meal.dart';

class Dish extends StatelessWidget {
  final Meal meal;

  const Dish({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(meal.title),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: [
          Image.network(meal.imageUrl),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Ingredients"),
            ],
          ),
          ListView.builder(
            itemCount: meal.ingredients.length,
            itemBuilder: (context, index) {
              return ingredient(meal.ingredients[index]);
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Steps"),
            ],
          ),
          ListView.builder(
            itemCount: meal.steps.length,
            itemBuilder: (context, index) {
              return step(index + 1, meal.steps[index]);
            },
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }

  Widget ingredient(String text) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.amber,
      ),
      child: Text(text),
    );
  }

  Widget step(int i, String text) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
            alignment: Alignment.center,
            child: Text(
              "# $i",
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

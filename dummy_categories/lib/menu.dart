import 'package:flutter/material.dart';
import 'meal.dart';
import 'dish.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
        title: const Text("Quick & Easy"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: dummyMeals.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dish(
                      meal: dummyMeals[index],
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Column(
                children: [
                  Image.network(dummyMeals[index].imageUrl),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                            Text(
                              dummyMeals[index].duration,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.shopping_bag,
                              color: Colors.black,
                            ),
                            Text(
                              dummyMeals[index].complexity,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.attach_money,
                              color: Colors.black,
                            ),
                            Text(
                              dummyMeals[index].affordability,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

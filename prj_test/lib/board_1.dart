import 'package:flutter/material.dart';

class Board1 extends StatefulWidget {
  const Board1({super.key});

  @override
  State<Board1> createState() => _Board1State();
}

class _Board1State extends State<Board1> {
  List<String> list1 = [];
  List<String> list2 = [];
  List<String> list3 = [];
  List<String> list4 = [];
  int status = 0;

  @override
  Widget build(BuildContext context) {
    return status == 0
        ? tabAll()
        : status == 1
            ? tabUncompleted()
            : status == 2
                ? tabCompleted()
                : tabFavourite();
  }

  Container tabAll() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 300,
              ),
              Icon(Icons.search),
              Icon(Icons.notifications),
              Icon(Icons.calendar_month),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  status = 0;
                  setState(() {});
                },
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 1;
                  setState(() {});
                },
                child: const Text(
                  "Uncompleted",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 2;
                  setState(() {});
                },
                child: const Text(
                  "Completed",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 3;
                  setState(() {});
                },
                child: const Text(
                  "Favourite",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.menu,
                  size: 128,
                  color: Colors.grey,
                ),
                Text(
                  "No Tasks Yey, Please Insert Some Tasks",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Add a task",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tabUncompleted() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 300,
              ),
              Icon(Icons.search),
              Icon(Icons.notifications),
              Icon(Icons.calendar_month),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  status = 0;
                  setState(() {});
                },
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 1;
                  setState(() {});
                },
                child: const Text(
                  "Uncompleted",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 2;
                  setState(() {});
                },
                child: const Text(
                  "Completed",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 3;
                  setState(() {});
                },
                child: const Text(
                  "Favourite",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.menu,
                  size: 128,
                  color: Colors.grey,
                ),
                Text(
                  "No Tasks Yey, Please Insert Some Tasks",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Add a task",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tabCompleted() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 300,
              ),
              Icon(Icons.search),
              Icon(Icons.notifications),
              Icon(Icons.calendar_month),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  status = 0;
                  setState(() {});
                },
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 1;
                  setState(() {});
                },
                child: const Text(
                  "Uncompleted",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 2;
                  setState(() {});
                },
                child: const Text(
                  "Completed",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 3;
                  setState(() {});
                },
                child: const Text(
                  "Favourite",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.menu,
                  size: 128,
                  color: Colors.grey,
                ),
                Text(
                  "No Tasks Yey, Please Insert Some Tasks",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Add a task",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tabFavourite() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 300,
              ),
              Icon(Icons.search),
              Icon(Icons.notifications),
              Icon(Icons.calendar_month),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  status = 0;
                  setState(() {});
                },
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 1;
                  setState(() {});
                },
                child: const Text(
                  "Uncompleted",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 2;
                  setState(() {});
                },
                child: const Text(
                  "Completed",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  status = 3;
                  setState(() {});
                },
                child: const Text(
                  "Favourite",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.menu,
                  size: 128,
                  color: Colors.grey,
                ),
                Text(
                  "No Tasks Yey, Please Insert Some Tasks",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Add a task",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
  // Container task(String text) {
  //   return Container(
  //     margin: const EdgeInsets.all(16),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: [
  //         CheckboxListTile(
  //           title: Text(text),
  //         )
  //       ],
  //     ),
  //   );
  // }
}

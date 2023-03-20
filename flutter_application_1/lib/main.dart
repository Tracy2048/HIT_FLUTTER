import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("00:00 AM"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.ac_unit),
                      Icon(Icons.access_alarm),
                      Icon(Icons.battery_0_bar),
                      Text("0%")
                    ])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage("assets/1.jpg")),
                        shape: BoxShape.circle)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alex Bendra",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("6868 8686 9999",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
            item(Icons.credit_card, Colors.blue, "My Account"),
            item(Icons.location_on_outlined, Colors.purple, "Address"),
            item(Icons.settings_outlined, Colors.orange, "Setting"),
            item(Icons.help_center, Colors.purple, "Help Center"),
            item(Icons.phone, Colors.blue, "Contact"),
            Container(
                color: Colors.red[100],
                padding: const EdgeInsets.fromLTRB(200, 10, 200, 10),
                child: const Text(
                  "Log out",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
      ),
    ));
  }

  Widget item(IconData icon, Color color, String text) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: color),
                    child: Icon(icon, color: Colors.white)),
                Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const Icon(Icons.chevron_right)
          ],
        ));
  }
}

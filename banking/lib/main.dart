import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.pink[100],
          body: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("10:41 AM"),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.house,
                              color: Colors.red,
                            ),
                            Column(
                              children: const [
                                Text("Số dư khả dụng"),
                                Text(
                                  "4999999999",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        item(Icons.wallet, Colors.red, "Tài khoản và thẻ"),
                        item(Icons.attach_money, Colors.red, "Rút tiền"),
                        item(Icons.compare_arrows, Colors.red, "Chuyển tiền"),
                        item(Icons.qr_code_2, Colors.red, "Mã Qr code"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Lịch sử giao dịch",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.refresh)
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Hôm qua, 5 Thg 1, 2023",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )
                            ]),
                        banking(
                            Icons.turn_right,
                            Colors.green,
                            "Truong Bach Chien",
                            "+10.000.000",
                            "Chien chuyen tien hoc"),
                        banking(
                            Icons.turn_left,
                            Colors.red,
                            "Truong Bach Chien",
                            "-5.000.000",
                            "Thanh toan tien an")
                      ],
                    ),
                  )
                ]),
          )),
    );
  }

  Widget item(IconData icon, Color color, String text) {
    return Column(
      children: [Icon(icon, color: color), Text(text)],
    );
  }

  Widget banking(
      IconData icon, Color color, String name, String money, String text) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                Column(
                  children: [
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            Text(
              money,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Qwerty",
      "age": 23,
      "favColors": [
        "Black",
        "Red",
        "Green",
        "Black",
        "Red",
        "Green",
        "Black",
        "Red",
        "Green",
        "Black",
        "Red",
        "Green"
      ]
    },
    {
      "name": "Asdfgh",
      "age": 23,
      "favColors": ["Black", "Red", "Green"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Maaping List"),
        ),
        body: ListView(
          children: myList.map((e) {
            List myFavColors = e['favColors'];

            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name: ${e['name']}"),
                          Text("Age: ${e['age']}")
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColors.map((fav) {
                        return Container(
                          color: Colors.amber,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(fav.toString()),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

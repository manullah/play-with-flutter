import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List<Color> myColor = [
    //   Colors.red,
    //   Colors.blue,
    //   Colors.amber,
    //   Colors.green
    // ];

    final List<Widget> myList = List.generate(
      100,
      (index) => Text(
        "${index + 1}",
        style: const TextStyle(fontSize: 40),
      ),
    );

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widget"),
      ),
      body: ListView(
        children: myList,
      ),
      // body: ListView.separated(
      //     separatorBuilder: (context, index) {
      //       return const Divider(color: Colors.black);
      //     },
      //     itemCount: 4,
      //     itemBuilder: (context, index) {
      //       return const Text('Hallo');
      //     })
    ));
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Column Widget"),
          ),
          body: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
              ),
              Container(width: 200, height: 200, color: Colors.yellow),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              )
            ],
          )),
    );
  }
}

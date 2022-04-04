import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Colors.amber,
          ),
          leadingWidth: 90,
          title: Container(
            height: 30,
            color: Colors.red,
          ),
          centerTitle: false,
          actions: [
            Container(
              width: 50,
              color: Colors.lime,
            ),
            Container(
              width: 50,
              color: Colors.white,
            ),
            Container(
              width: 50,
              color: Colors.lime,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(width: 50, height: 50, color: Colors.black),
          ),
          flexibleSpace: Container(
            height: 100,
            margin: const EdgeInsets.only(top: 50),
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

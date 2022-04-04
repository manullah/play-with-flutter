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
          title: const Text("Text Widget"),
        ),
        body: const Center(
          child: Text(
            "Eiusmod quis cillum velit anim. Adipisicing minim esse incididunt exercitation pariatur dolore laborum commodo ullamco.",
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                fontFamily: 'Stick'),
          ),
        ),
      ),
    );
  }
}

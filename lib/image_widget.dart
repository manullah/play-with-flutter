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
            title: const Text("Image Widget"),
          ),
          body: Center(
            child: Container(
              width: 350,
              height: 500,
              color: Colors.amber,
              child: const Image(
                fit: BoxFit.cover,
                // image: AssetImage("images/image.png")
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/en/0/07/Something_in_the_Rain.jpg'),
              ),
            ),
          )),
    );
  }
}

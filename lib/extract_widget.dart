import 'package:faker/faker.dart';
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
              title: const Text("ListTile Widget"),
            ),
            body: ListView.builder(
              // separatorBuilder: (context, index) => const Divider(
              //   color: Colors.amber,
              // ),
              itemCount: 10,
              itemBuilder: (context, index) => ChatItem(
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/en/0/07/Something_in_the_Rain.jpg",
                title: faker.person.name(),
                subtitle: faker.lorem.sentence(),
              ),
            )));
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: const Text(
        "10:00 PM",
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}

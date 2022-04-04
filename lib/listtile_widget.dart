import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final List<Widget> myList = List.generate(
        5,
        (index) => const ListTile(
              dense: true,
              contentPadding: EdgeInsets.all(10),
              title: Text('This is Title'),
              subtitle: Text(
                "Laboris voluptate aute voluptate ex mollit. Do deserunt amet dolore deserunt velit esse amet incididunt exercitation laboris. Ut veniam in pariatur qui amet magna fugiat incididunt nostrud et. Mollit sit id consectetur aute. Eiusmod est enim aliquip eiusmod eu tempor id deserunt.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 PM"),
            ));

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("ListTile Widget"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.black),
        itemCount: 5,
        itemBuilder: (context, index) => const ListTile(
          dense: true,
          contentPadding: EdgeInsets.all(10),
          title: Text('This is Title'),
          subtitle: Text(
            "Laboris voluptate aute voluptate ex mollit. Do deserunt amet dolore deserunt velit esse amet incididunt exercitation laboris. Ut veniam in pariatur qui amet magna fugiat incididunt nostrud et. Mollit sit id consectetur aute. Eiusmod est enim aliquip eiusmod eu tempor id deserunt.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          leading: CircleAvatar(),
          trailing: Text("10:00 PM"),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Tab> myTab = [
    const Tab(
      text: 'Icon 1',
      icon: Icon(Icons.abc),
    ),
    const Tab(
      text: 'Icon 2',
      icon: Icon(Icons.access_alarm),
    ),
    const Tab(
      text: 'Icon 3',
      icon: Icon(Icons.abc),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar Widget"),
            centerTitle: false,
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              // IndicatorColor: Colors.green,
              // indicatorweight: 5,
              // indicatorPadding: EdgeInsets.all(10),

              indicator: const BoxDecoration(
                color: Colors.amber,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5,
                  ),
                ),
              ),
              tabs: myTab,
            ),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            )
          ]),
        ),
      ),
    );
  }
}

// ignore: file_names

import 'package:flutter/material.dart';

import 'homesrc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  final scr = [
    const Homesrc(),
    const Scaffold(
      body: Center(child: Text("Shorts")),
    ),
    const Scaffold(
      body: Center(child: Text("Add")),
    ),
    const Scaffold(
      body: Center(child: Text("subscriptions")),
    ),
    const Scaffold(
      body: Center(child: Text("libraries")),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scr[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (i) => setState(() => selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "shorts",
            activeIcon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
            activeIcon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: "subscriptions",
            activeIcon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "library",
            activeIcon: Icon(Icons.video_library),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),
              ),
              Tab(icon: Icon(Icons.home),
              ),
              Tab(icon: Icon(Icons.home),
              ),
              Tab(icon: Icon(Icons.home),
              ),
              Tab(icon: Icon(Icons.home),
              ),
            ],
          ),
          title: const Text('Status'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
            Container(
              color: Colors.orangeAccent,
              child: const Icon(Icons.home),
            ),
          ]
        ),
      ),
      );
  }
}
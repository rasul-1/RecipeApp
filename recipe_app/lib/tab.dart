import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('REcipe'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "Hello",
              ),
              Tab(
                text: "How are you",
              ),
              Tab(
                text: "Good",
              )
            ],
          ),
        ),
        body: const TabBarView(
          
          children: [
            Text('First'),
            Text('Second'),
            Text('third'),
          ],
        ),
      ),
    );
  }
}

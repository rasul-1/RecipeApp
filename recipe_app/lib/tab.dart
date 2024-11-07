import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    var size=mediaQueryData.size;
    var orientaion=mediaQueryData.orientation;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('REcipe'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                text: "Hello",
                icon: Icon(Icons.home),
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
        body: TabBarView(
          physics: ScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height*0.30,
                  width: double.infinity,
                  color: Colors.blue,
                  child: const Text('First'),
                ),
              ],
            ),
            const Text('Second'),
            const Text('third'),
          ],
        ),
      ),
    );
  }
}

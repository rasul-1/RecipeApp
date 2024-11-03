import 'package:flutter/material.dart';
import 'package:recipe_app/home_page.dart';
import 'package:recipe_app/second_page.dart';
import 'package:recipe_app/tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sellectedPage=0;
  final _pages=[
    MainScreen(),
    MyTab(),
    SecondPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[sellectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'HOME',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'SEARCH',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'FAVORITES',
            icon: Icon(Icons.favorite_sharp),
          ),
        ],
        currentIndex: sellectedPage,
        onTap: (value) {
          setState(() {
            sellectedPage=value;
          });
        },
      ),
    );
  
  }
}
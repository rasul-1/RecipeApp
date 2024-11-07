import 'package:flutter/material.dart';
import 'package:recipe_app/navi_rail.dart';
import 'package:recipe_app/silverBar.dart';
import 'package:sz_fancy_bottom_navigation/sz_fancy_bottom_navigation.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
  
}

class _MenuState extends State<Menu> {
  int sellectedPage=0;
  final _pages=[
    Container(
      color: Colors.blue
    ),
    Silverbar(),
    NaviRail()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[sellectedPage],
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: 'HOME'),
          TabData(iconData: Icons.search, title: 'SEARCH'),
          TabData(iconData: Icons.favorite, title: 'Favorite')
        ],
        onTabChangedListener: (int position) {
          setState(() {
            sellectedPage=position;
          });
        },
      ),
    );
  }
}

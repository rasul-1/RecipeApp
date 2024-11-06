import 'package:flutter/material.dart';
import 'package:sz_fancy_bottom_navigation/sz_fancy_bottom_navigation.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
  
}

class _MenuState extends State<Menu> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: 'HOME'),
          TabData(iconData: Icons.search, title: 'SEARCH'),
          TabData(iconData: Icons.favorite, title: 'Favorite')
        ],
        onTabChangedListener: (int position) {
          setState(() {
            
          });
        },
      ),
    );
  }
}
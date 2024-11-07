import 'package:flutter/material.dart';

class NaviRail extends StatefulWidget {
  const NaviRail({super.key});

  @override
  State<NaviRail> createState() => _NaviRailState();
}

class _NaviRailState extends State<NaviRail> {
  int _sellectedP = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text('HOME'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.search),
              label: Text('Search'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.logout),
              label: Text('login'),
            ),
          ],
          selectedIndex: _sellectedP,
          onDestinationSelected: (value) {
            _sellectedP=value;
          },
           )
        ],
      ),
    );
  }
}

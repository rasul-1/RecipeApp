import 'package:flutter/material.dart';
import 'package:recipe_app/cons.dart';
import 'package:recipe_app/home.dart';
import 'package:recipe_app/home_page.dart';
import 'package:recipe_app/new_detail.dart';
import 'package:recipe_app/second_page.dart';
import 'package:recipe_app/tab.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RECipe',
      theme:ThemeData(primaryColor:Colors.grey.shade800,fontFamily: 'Sevillana') ,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        Cons.home:(context)=> HomePage(),
        Cons.main:(context)=>MainScreen(),
        Cons.details:(context)=>Details(),
        Cons.second:(context)=>SecondPage(),
        Cons.tab:(context)=>MyTab()
      }
      
    );
  }
}

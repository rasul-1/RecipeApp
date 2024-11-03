import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/cons.dart';
import 'package:recipe_app/models.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, RECIPE>;
    final RECIPE recipe = arg['recipe']!;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Platform.isIOS ? const Icon(Icons.add) : Container(),
          const SizedBox(width: 8)
        ],
        title: Text(recipe.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue.shade100,
            child: Image.asset(
              recipe.imageURL,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Text(
            'INGREDIENTS',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(recipe.ingrediant),
          CupertinoButton(
            onPressed: () {
              myDialog(context);
            },
            child: const Text('Request'),
          ),
        ],
      ),
      floatingActionButton: Platform.isIOS
          ? Container()
          : FloatingActionButton(
              onPressed: () {},
              child:const Icon(Icons.add),
            ),
    );
  }

  Future myDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Alert!'),
        content: const Text("Do You really want to go"),
        actions: [
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child:const Text("OK"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, Cons.main);
            },
            child:const Text("No"),
          ),
        ],
      ),
    );
  }
}

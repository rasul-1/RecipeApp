import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('Second Page'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(70),
          width: 400,
          height: 200,
          color: Colors.red,
          child: Text('HELLO'),
        ),
      ),
    );
  }
}
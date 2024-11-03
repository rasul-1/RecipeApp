import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('RECIPE APP'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            child: Container(
              height: 600,
              width: 400,
              decoration: const BoxDecoration(
                gradient:LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.topLeft,
                  colors: [Colors.blue,Colors.red]) 
              ),
            ),
          ),
        ],
      ),
    );
  }
}

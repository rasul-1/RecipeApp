import 'package:flutter/material.dart';
import 'package:recipe_app/input_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('RECIPE APP'),
      ),
      body: GestureDetector(
        onTap: () {
          final snackbar = SnackBar(
            content: const Text('HELLO How are you'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60,
                width: 140,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topLeft,
                    colors: [Colors.blue, Colors.black, Colors.red],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 140,
                height: 60,
                color: Colors.blue.shade100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InputPage(),
                      ),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
              )
            
            ],
            
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipe_app/menu.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              width: 428,
              height: 175,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/rec.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/burger.jpg'),
                      ),
                    ),
                  ),
                  const Text(
                    'NeedFood',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  height: 74,
                  width: 74,
                  image: AssetImage('assets/images/pizza.jpg'),
                ),
                Image(
                  height: 40,
                  width: 40,
                  image: AssetImage('assets/images/fast.jpg'),
                ),
                Image(
                  height: 74,
                  width: 74,
                  image: AssetImage('assets/images/salad.jpg'),
                ),
              ],
            ),
            const Text(
              'Sign in',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Email address',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Text('Forgot password'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Menu(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 160, vertical: 12),
                    backgroundColor: Colors.blue),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  fit: BoxFit.cover,
                  height: 84,
                  width: 100,
                  image: AssetImage('assets/images/fast.jpg'),
                ),
                SizedBox(
                  width: 80,
                ),
                Image(
                  height: 74,
                  width: 74,
                  image: AssetImage('assets/images/pizza.jpg'),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 40,
                ),
                Image(
                  height: 100,
                  width: 80,
                  image: AssetImage('assets/images/salad.jpg'),
                ),
                SizedBox(
                  width: 80,
                ),
                Image(
                  height: 74,
                  width: 74,
                  image: AssetImage('assets/images/platter.jpg'),
                ),
              ],
            ),
            Text('No account yet?'),
            Text(
              'Sign up now',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

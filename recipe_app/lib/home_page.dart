import 'package:flutter/material.dart';
import 'package:recipe_app/new_detail.dart';
import 'models.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  static List<RECIPE> list = [
    RECIPE("Palov", "Price:10\$", 'assets/images/palov.jpeg',
        'Meat,Carrots,Onion,Rice'),
    RECIPE("Manti", 'Price:1\$', 'assets/images/manti.jpeg',
        'Flour,meat,oninon,Pateto(optional)'),
    RECIPE('Lag\'mon', 'Price:3\$', 'assets/images/pic.jpeg',
        'Nodles,Meat,Potato,Onion,Carrots'),
    RECIPE('Soup', 'Price:2.5\$', 'assets/images/soup.jpeg',
        'Meat,Potato,Tomato,Garlic,Peppers,Eggplant,Onion')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RECIPE APP',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: ListView(
        children: [
          myCard(list[0], context),
          myCard(list[1], context),
          myCard(list[2], context),
          myCard(list[3], context),
        ],
      ),
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
      ),
    );
  }
}

Widget myCard(RECIPE recipe, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(),
        ),
      );
    },
    child: Card(
      margin: const EdgeInsets.all(8),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            color: Colors.white,
            child: Image(
              image: AssetImage(recipe.imageURL),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              recipe.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              recipe.cost,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              recipe.ingrediant,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    ),
  );
}

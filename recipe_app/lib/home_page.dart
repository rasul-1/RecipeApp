import 'package:flutter/material.dart';
import 'package:recipe_app/cons.dart';
import 'models.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
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
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      drawer: myDrawer(context),
      appBar: AppBar(
        title: const Text(
          'RECIPE APP',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return myCard(list[index], context);
        },
      ),
      
    );
  }
}

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue.shade100),
          child: const Text('MENU'),
        ),
         const ListTile(
          title:  Text('My Account'),
          leading: Icon(Icons.person),
        ),
        ListTile(
          title:const Text("Create a group"),
          leading:const Icon(Icons.group_add),
          onTap: (){
            Navigator.pushNamed(context, Cons.tab);
          },
        ),
        ListTile(
          title:const Text("LOGIN"),
          leading:const Icon(Icons.login_outlined),
          onTap: () {
            Navigator.pushNamed(context, Cons.second);
          },
        )
      ],
    ),
  );
}

Widget myCard(RECIPE food, BuildContext context) {
  
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, Cons.details, arguments: {'recipe': food});
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
              image: AssetImage(food.imageURL),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              food.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              food.cost,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              food.ingrediant,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          )
        ],
      ),
    ),
  );
}

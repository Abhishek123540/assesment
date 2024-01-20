import 'package:assesment/starters_page.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int i;
    return ListView(
      children: [
        Image.asset('assets/images/6.png'),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Text(
                'HUNGRY?',
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.45),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_rounded),
              ),
            ],
          ),
        ),
        for (i = 0; i <= 5; i++)
          Carding(
            i: i,
          ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Carding extends StatelessWidget {
  Carding({
    super.key,
    required this.i,
  });
  int i;
  @override
  Widget build(BuildContext context) {
    final img = [
      Image.asset('assets/images/Starters Icon.png'),
      Image.asset('assets/images/Soup Icon.png'),
      Image.asset('assets/images/Salad Icon.png'),
      Image.asset('assets/images/Breakfast Icon.png'),
      Image.asset('assets/images/Turkish Grill Icon.png'),
      Image.asset('assets/images/Drinks Icon.png'),
    ];
    final txt = [
      const Text(
        'Starters',
        style: TextStyle(fontSize: 20),
      ),
      const Text(
        'Soup',
        style: TextStyle(fontSize: 20),
      ),
      const Text(
        'Salad',
        style: TextStyle(fontSize: 20),
      ),
      const Text(
        'Breakfast',
        style: TextStyle(fontSize: 20),
      ),
      const Text(
        'Turkish Grill',
        style: TextStyle(fontSize: 20),
      ),
      const Text(
        'Drinks',
        style: TextStyle(fontSize: 20),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      child: GestureDetector(
        onTap: () {
          if (i == 0) {
            a++;
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartersScreen(),
                ));
          }
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(4),
            shape: BoxShape.rectangle,
            color: Colors.grey[900],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                img[i],
                SizedBox(width: 25),
                SizedBox(width: 150, child: txt[i]),
                SizedBox(width: 100),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[850],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

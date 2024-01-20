import 'package:assesment/dish.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class StartersScreen extends StatelessWidget {
  const StartersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(313033),
        automaticallyImplyLeading: false,
        title: ABar(),
      ),
      body: StarterPage(),
      bottomNavigationBar: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 122, 21, 236),
        child: TextButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              Text(
                'X   ITEM ADDED TO CART',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'STARTERS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_rounded),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  'Non Veg',
                  style: TextStyle(fontSize: 9),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 87, 5, 5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
              RotatedBox(
                quarterTurns: -1,
                child: Text(
                  'Veg',
                  style: TextStyle(fontSize: 9),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 49, 4),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        for (int i = 0; i < 4; i++)
          DishCard(
            i: i,
          ),
      ],
    );
  }
}

// ignore: must_be_immutable
class DishCard extends StatelessWidget {
  DishCard({super.key, required this.i});
  int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.grey[850]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dishes[i].imag,
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.5555,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${dishes[i].name}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: dishes[i].colour,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text('${dishes[i].desc}'),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: dishes[i].discount > 0
                        ? Container(
                            width: 130,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₹${((100 - dishes[i].discount) / 100 * dishes[i].price).ceil()}.00',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  '₹${dishes[i].price}.00',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 0.5,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Row(
                            children: [
                              Text(
                                '₹${dishes[i].price}.00',
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 75)
                            ],
                          ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      width: 75,
                      height: 30,
                      child: Center(
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

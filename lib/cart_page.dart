import 'package:flutter/material.dart';

import 'main.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(313033),
        automaticallyImplyLeading: false,
        title: ABar(),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 150,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey[900],
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.indigo,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.restaurant_rounded,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

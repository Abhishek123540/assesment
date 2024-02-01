import 'package:flutter/material.dart';

import 'main.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(313033),
        automaticallyImplyLeading: false,
        title: ABar(),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

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
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        color: Colors.indigo,
                        Icons.restaurant_rounded,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        ':',
                        style: TextStyle(color: Colors.indigo),
                      ),
                      height: 20,
                    ),
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
                        color: Colors.indigo,
                        Icons.home_filled,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'Malabar Cafe',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.location_on_sharp,
                          size: 16,
                        ),
                      ],
                    ),
                    Text(
                      'Restaurant',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.5,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                          width: 160,
                          child: Divider(
                            indent: 0,
                            endIndent: 0,
                            color: Colors.white12,
                            height: 20,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(width: 40),
                        Text(
                          '2.5km away',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Langsep Street',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white12,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ORDER DETAILS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kung Pao Chicken'),
                          Text('Small'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Kung Pao Chicken'),
                          Text('Small'),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.badge_rounded),
                Text('APPLY COUPON'),
                SizedBox(width: 140),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

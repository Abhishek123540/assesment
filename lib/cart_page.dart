import 'package:flutter/material.dart';

import 'bill.dart';
import 'main.dart';
import 'order_details.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(313033),
        automaticallyImplyLeading: false,
        title: const ABar(),
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
                const SizedBox(width: 20),
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
                      child: const Icon(
                        color: Colors.indigo,
                        Icons.restaurant_rounded,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
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
                      child: const Icon(
                        color: Colors.indigo,
                        Icons.home_filled,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
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
          const Divider(
            color: Colors.white12,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ORDER DETAILS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
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
                return Column(
                  children: [
                    SizedBox(height: 10),
                    OrderDetails(),
                    Divider(),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.badge_rounded),
              const Text('APPLY COUPON'),
              const SizedBox(width: 140),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(
            height: 2,
            width: MediaQuery.of(context).size.width,
            child: const Divider(
              indent: 40,
              endIndent: 40,
            ),
          ),
          const Bill(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            child: OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('+ ADD MORE ITEMS'),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('data'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
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
                  Text('1750'),
                  Text('Small'),
                ],
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

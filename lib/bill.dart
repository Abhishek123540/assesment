import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  const Bill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '₹1,725',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CGST',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '₹43.13',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SGST',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '₹43.13',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Service Charge',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '₹172.5',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Divider(
          indent: 40,
          endIndent: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BILL TOTAL',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                '₹1984',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

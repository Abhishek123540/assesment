import 'package:flutter/material.dart';

class Dish with ChangeNotifier {
  final id;
  final imag;
  final name;
  final desc;
  final price;
  final discount;
  var fprice;
  final veg;
  final colour;
  Dish({
    this.id,
    this.imag,
    this.name,
    this.desc,
    this.discount,
    this.price,
    this.veg,
    this.colour,
    this.fprice,
  });
}

List<Dish> dishes = [
  Dish(
    id: 1,
    name: "Kung pao Chicken",
    desc: "Classic Sichuan chicken dish with...",
    imag: Image.asset('assets/images/Best Seller Icon.png'),
    discount: 12.354,
    price: 599,
    veg: false,
    colour: Colors.red,
  ),
  Dish(
      id: 2,
      name: "Chilli Chicken",
      desc: "Chicken is fried and sauted with...",
      imag: Image.asset('assets/images/Best Seller Icon (1).png'),
      discount: 0,
      price: 525,
      veg: false,
      colour: Colors.red),
  Dish(
      id: 3,
      name: "Chilli Paneer",
      desc: "Pizza Margherita is basically a...",
      imag: Image.asset('assets/images/Best Seller Icon (2).png'),
      discount: 0,
      price: 525,
      veg: true,
      colour: Colors.green),
  Dish(
      id: 4,
      name: "Veg Seekh Kabab",
      desc: "Cooked Mix Vegetable Mixer In ...",
      imag: Image.asset('assets/images/Best Seller Icon (3).png'),
      discount: 0,
      price: 410,
      veg: true,
      colour: Colors.green),
];

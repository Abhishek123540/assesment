import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(List<String> args) {
  runApp(Myapp());
}

var a = 0;
final theme = ThemeData(
  fontFamily: "Gilroy",
  brightness: Brightness.dark,
);

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(313033),
        title: ABar(),
      ),
      body: HomeScreen(),
    );
  }
}

class ABar extends StatelessWidget {
  const ABar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.036),
        Row(
          children: [
            IconButton(
              onPressed: () {
                if (a > 0) {
                  a--;
                  Navigator.pop(context);
                }
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.175),
            const Text(
              'Malabar Cafe',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                height: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

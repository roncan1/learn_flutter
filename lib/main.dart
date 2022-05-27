import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Bag", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Image.asset("assets/bag.jpg", fit: BoxFit.cover,),
          Image.asset("assets/cloth.jpg", fit: BoxFit.cover,)
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercado livre',
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'Mercado Livre'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xfff5d415),
        actions:<Widget> [
            Icon( 
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 26.0,
            ),
        ],

          leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 26.0,
          ),

          bottom: Text(''),
        )
      );
  }
}

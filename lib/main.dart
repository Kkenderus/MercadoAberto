import 'dart:html';

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
      theme: ThemeData(),
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
          title: TextField (
          decoration: InputDecoration(
            fillColor: Colors.white,
           enabledBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.white, width: 90,),
           ),
          hintText: ('Pesquisar no Mercado Livre')),
          ),
          elevation: 0,
          backgroundColor: Color(0xfff5d415),
          actions: <Widget>[
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

          bottom: PreferredSize(
            preferredSize: Size(70, 30),
            child: ListTile(
                leading: Icon(
                  Icons.pin_drop_sharp,
                  color: Colors.black,
                  size: 26.0,
                ),
                title: Text('Enviar Para Valéria - Rua Jardim Paulista, 58')),
          ),

          ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 0.5),
                colors: [
                  Color.fromRGBO(245, 212, 21, 1), //cor amarela
                  Color(0xfff5f5f5), //cor cinza
                ]),
          ),
        ));
  }
}

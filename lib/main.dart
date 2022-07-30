import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/botao_categoria.dart';
import 'package:mercadoaberto/components/campo.pesquisa.dart';
import 'package:mercadoaberto/components/card.assinatura.dart';
import 'package:mercadoaberto/components/card.fretegratis.dart';


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff5d415),
          actions: <Widget>[
          CampoPesquisa(),
          Padding(padding: EdgeInsets.all(6)),
          Padding(
          padding: EdgeInsets.only(top: 10),

          child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 26.0,
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
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
            padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.0, 0.5),
                colors: [
                  Color.fromRGBO(245, 212, 21, 1), //cor amarela
                  Color(0xfff5f5f5), //cor cinza
               ]
             ),
          ),
          child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(5),
              height: 230,
              child:
              Image.asset( 'lib/imagens/image.jpg') 
              ,

            ),
              
              const Padding(padding: EdgeInsets.all(10)),
              const CardAssinatura(
              titulo: "Assine o nível 6 por R\$ 9,90/mês"
            ),
             const Padding(padding: EdgeInsets.all(5)),
             const CardFreteGratis(),
             const Padding(padding: EdgeInsets.all(10)),
             Row(children: [const BotaoCategoria(icone: Icons.castle),
                            const BotaoCategoria(icone: Icons.wallet_travel_rounded),
                            const BotaoCategoria(icone: Icons.add),
          ]
         ),
          ]
          )
    )
    );
  }
}

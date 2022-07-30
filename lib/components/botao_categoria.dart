
import 'package:flutter/material.dart';
class BotaoCategoria extends StatefulWidget {
  const BotaoCategoria({ Key? key ,required this.icone }) : super(key: key);

final IconData icone;

  @override
  _BotaoCategoriaState createState() => _BotaoCategoriaState();
}



class _BotaoCategoriaState extends State<BotaoCategoria> {
 
bool selecionado = false;

 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: (() => {
        setState(() => {
          // if( selecionado == true) {
          //  selecionado = false
          // } else{
          //   selecionado = true
          // }

          // selecionado = selecionado? false : true

          selecionado = !selecionado

        })

      }),
      child: Container(
      height: 60,
      width: 60,
      child: Icon(widget.icone),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
      color: selecionado? Colors.yellow : Colors.purple
      )

     ),
    );
  }
}
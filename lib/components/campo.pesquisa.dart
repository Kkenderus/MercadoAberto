import 'package:flutter/material.dart';

class  CampoPesquisa extends StatelessWidget {
  const CampoPesquisa ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width - 110,
            child: TextField (
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
              ),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                ),
                borderRadius: BorderRadius.all(
                Radius.circular(30.0),
                ),
                ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                color: Color(0xffffdb15),
                width: 0,
                ),
                borderRadius: BorderRadius.all(
                Radius.circular(30.0),
                ),
          ),
          hintText: ('Pesquisar no Mercado Livre')
          ),
          ),
    );
  }
}
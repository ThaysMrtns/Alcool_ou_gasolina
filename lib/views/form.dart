import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Saiba qual a melhor opção para o abastecimento do seu carro", 
              style: TextStyle(fontSize: 18, color: Colors.grey[700], fontWeight: FontWeight.w300) 
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                labelText: "Preço do Álcool, ex: 3,95",
                labelStyle: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                labelText: "Preço da Gasolina, ex: 5,65",
                labelStyle: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w300)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400)),
              color: Colors.amber[700],
              onPressed: () {
                print('clickou nimin');
              },
            ),
          )
        ]
      )
    );
  }
}
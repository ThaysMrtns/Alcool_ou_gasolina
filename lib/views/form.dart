import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Formulario> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";

  void _calcular (){
    double alcool =  double.tryParse(_controllerAlcool.text);
    double gasolina = double.tryParse(_controllerGasolina.text);
    
    if(alcool == null || gasolina == null){
      setState(() {
        _resultado = "Dados inválidos";
      });
    }    

    if((alcool/gasolina)>= 0.7){
      setState(() {
        _resultado = "Melhor abastecer com Gasolina";
      });
    }else{
      setState(() {
        _resultado = "Melhor abastecer com Álcool";
      });
    }

    _limparCampos();
  }

  void _limparCampos(){
    setState(() {
      _controllerAlcool.text = "";
      _controllerGasolina.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Saiba qual a melhor opção para o abastecimento do seu automóvel", 
              style: TextStyle(fontSize: 18, color: Colors.grey[700], fontWeight: FontWeight.w300) 
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                labelText: "Preço do Álcool, ex: 3,95",
                labelStyle: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w300),
              ),
              controller: _controllerAlcool,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                labelText: "Preço da Gasolina, ex: 5,65",
                labelStyle: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w300)
              ),
              controller: _controllerGasolina,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400)),
              color: Colors.amber[700],
              onPressed: (){_calcular();},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              _resultado,
              style: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.w300),
            ), 
          )
        ]
      )
    );
  }
}
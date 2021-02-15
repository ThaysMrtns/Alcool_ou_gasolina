import 'package:flutter/material.dart';
import 'package:alcoolOuGasolina/views/form.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Álcool ou Gasolina"
        ),
        backgroundColor: Colors.amber[500],
      ),
      body: SingleChildScrollView(
        child: 
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Formulario(),
            ],),  
          ),)
    );
  }
}


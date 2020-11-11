import 'package:flutter/material.dart';

class ControleScreen extends StatefulWidget {
  @override
  _ControleScreenState createState() => _ControleScreenState();
}

class _ControleScreenState extends State<ControleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Controle"),backgroundColor: Color.fromRGBO(75, 49, 122, 1),elevation: 0),
      backgroundColor: Color.fromRGBO(75, 49, 122, 1),
      body: Column(
        children: <Widget>[
          Image.asset("assets/gifcontrole.gif"),
          Icon(Icons.gamepad,color: Colors.white, size: 200,)
        ],
      ),);
  }
}
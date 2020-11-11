import 'package:flutter/material.dart';

class EquipeScreen extends StatefulWidget {
  @override
  _EquipeScreenState createState() => _EquipeScreenState();
}

class _EquipeScreenState extends State<EquipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Equipe"),backgroundColor: Color.fromRGBO(75, 49, 122, 1),elevation: 0),
      backgroundColor: Color.fromRGBO(75, 49, 122, 1),
      body: Column(
        children: <Widget>[
          
          Image.asset("assets/gifcontrole.gif"),
          Text("Gustavo Duregger\nMurilo Melo\nYan Alexandre", style: TextStyle(color: Colors.white, fontSize: 30))
          
        ],
      ),);
  }
}
import 'package:flutter/material.dart';

class ChatBotScreen extends StatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversar com robô"),backgroundColor: Colors.black,elevation: 0),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Image.asset("assets/voicegif.gif"),
          Text("Escutando...", style:TextStyle(color: Colors.white70, fontSize: 30),)
        ],
      ),);
  }
}
import 'package:flutter/material.dart';

class MeusRobosOptions extends StatefulWidget {
  @override
  _MeusRobosOptionsState createState() => _MeusRobosOptionsState();
}

class _MeusRobosOptionsState extends State<MeusRobosOptions> {
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;
    return Scaffold(
            appBar: AppBar(
                title: Text("Meus Robôs"),
                backgroundColor: Colors.deepPurpleAccent[400], elevation: 0,),
            backgroundColor: Colors.deepPurpleAccent[400],
            body: Center(
                child: ListView(children: <Widget>[
              GestureDetector(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/chatbot.jpg',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin:
                      EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
                ),
                onTap: () async {
                  Navigator.pushNamed(context, "/robodronelist");
                },
              ),
              GestureDetector(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/chatbot.jpg',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin:
                      EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
                ),
                onTap: () async {
                  Navigator.pushNamed(context, "/roboterrestrelist");
                },
              ),
              GestureDetector(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/propaganda.jpg',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin:
                      EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
                ),
                onTap: () async {Navigator.pushNamed(context, "/roboartificiallist");},
              ),
            ])));
  }
}

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
            backgroundColor: Colors.white,
            body: Center(
                child: ListView(children: <Widget>[
                  new Padding(
                      padding:
                          new EdgeInsets.only(top: 30),),
              GestureDetector(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'assets/drone.jpg',
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
                    'assets/terrestre.jpg',
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
                    'assets/artificicial.jpg',
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
            ])),
            floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent[400],
        child: Icon(Icons.add),
        onPressed: () async {
         Navigator.pushNamed(context, "/construirrobofirststep");}));

  }
}

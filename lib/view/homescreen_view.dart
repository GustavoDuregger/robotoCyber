import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cyber',
        home: Scaffold(
            backgroundColor: Colors.deepPurpleAccent[400],
            body: Center(
                child: ListView(children: <Widget>[
              Row(
                children: [
                  new Padding(
                      padding:
                          new EdgeInsets.only(left: 35, right: 10, top: 30),
                      child: Text("Olá, sou o Cyber",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                  new Padding(
                      padding: new EdgeInsets.only(left: 35, right: 0, top: 30),
                      child: Image.asset(
                        "assets/robotoicon.png",
                        width: 50,
                      )),
                ],
              ),
            

              new Padding(
                  padding: new EdgeInsets.only(left: 35, right: 35, top: 30),
                  child: Text("Opções",
                      style: TextStyle(color: Colors.white, fontSize: 25))),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  height: alturaTela / 6,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(
                            right: 30,
                          ),
                        ),
                        GestureDetector(
                          child: new Container(
                            width: larguraTela / 2.8,
                            child: new Card(
                              color: Colors.deepPurpleAccent[700],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.adb,
                                    color: Colors.white,
                                    size: alturaTela/15,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: alturaTela/70,
                                    ),
                                  ),
                                  Text("Meus Robôs",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          onTap: () async {Navigator.pushNamed(context, "/meusrobosoptions");},
                        ),
                        GestureDetector(
                          child: new Container(
                            width: larguraTela / 2.8,
                            child: new Card(
                              color: Colors.deepPurpleAccent[700],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                    size: alturaTela/15,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: alturaTela/70,
                                    ),
                                  ),
                                  Text("Construir",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          onTap: () async {Navigator.pushNamed(context, "/construirrobofirststep");},
                        ),
                        GestureDetector(
                          child: new Container(
                            width: larguraTela / 2.8,
                            child: new Card(
                              color: Colors.deepPurpleAccent[700],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.group_work,
                                    color: Colors.white,
                                    size: alturaTela/15,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: alturaTela/70,
                                    ),
                                  ),
                                  Text("Equipe",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          onTap: () async {Navigator.pushNamed(context, "/equipe");},
                        ),
                        GestureDetector(
                          child: new Container(
                            width: larguraTela / 2.8,
                            child: new Card(
                              color: Colors.deepPurpleAccent[700],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.gamepad,
                                    color: Colors.white,
                                    size: alturaTela/15,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: alturaTela/70,
                                    ),
                                  ),
                                  Text("Controle",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                          onTap: () async {
                            Navigator.pushNamed(context, "/controle");
                          },
                        ),
                      ])),
                        new Padding(
                  padding: new EdgeInsets.only(left: 35, right: 35, top: 10),
                  child: Text("Novidades",
                      style: TextStyle(color: Colors.white, fontSize: 25))),
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
                    margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
                  ),
                  onTap: () async {
                    Navigator.pushNamed(context, "/chatbot");
                  },
                ),
                
new Padding(
                  padding: new EdgeInsets.only(left: 35, right: 35, top: 10),
                  child: Text("Promoção paga",
                      style: TextStyle(color: Colors.white, fontSize: 25))),

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
                    margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
                  ),
                  onTap: () async {
                    _openShowRoundModalBottomSheet();
                  },
                ),
              
            ]))));
  }
   Future _openShowRoundModalBottomSheet() async {
    double alturaTela = MediaQuery.of(context).size.height;
    final option = await showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext context) {
          return Container(
            height: alturaTela/3,
            child:  ListView(
                  children: <Widget>[

                    new Padding(
                padding: new EdgeInsets.only(left: 20, bottom: 10, top:30),
                child: new Text(
                  "Patch Policial",
                  style: new TextStyle(fontSize: 20.0, color: Colors.grey[900]),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 20, bottom: 10, top:10),
                child: new Text(
                  "Patch Policial já instalado!",
                  style: new TextStyle(fontSize: 18.0, color: Colors.green),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(left: 20, bottom: 20),
                child: new TextField(
      decoration:
          InputDecoration(border: InputBorder.none,
          icon: Icon(Icons.security),
          hintText: 'Informe a senha para ativar'),
    )
              ),

              
                  ])
          );
        });
}

}
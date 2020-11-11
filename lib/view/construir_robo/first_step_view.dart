import 'package:flutter/material.dart';
import 'package:steps/steps.dart';

class FirstStep extends StatelessWidget {
  final String title;
  FirstStep({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Construir Robô",),backgroundColor: Colors.deepPurpleAccent[400], elevation: 0,),
        body: Container(
          alignment: Alignment.topCenter,
          child: Steps(
            direction: Axis.vertical,
            size: 20.0,
            path: {'color': Colors.deepPurpleAccent[400], 'width': 3.0},
            steps: [
              {
                'color': Colors.white,
                'background': Colors.deepPurpleAccent,
                'label': '1',
                'content': Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Pronto para construir seu próprio robô?',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      'Faça do seu jeito, com caracteristicas e funções nas quais vão suprir sua necessidade, no final, o robô vai estar prontinho da linha de produção',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              },
              {
                'color': Colors.white,
                'background': Colors.deepPurpleAccent[400],
                'label': '2',
                'content': Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Você já tem uma planta?',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      'Escolha se deseja utilizar um modelo na qual você fará um upload ou se quer fazer seu robô do zero',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    
                    Row(
                children: [
                  new Padding(
                      padding:
                          new EdgeInsets.only(left: 0, right: 0, top: 10),
                      child: GestureDetector(
                          child: new Container(
                            width: 100,
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
                                    Icons.new_releases,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 15,
                                    ),
                                  ),
                                  Text("Fazer do zero",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.all(1),
                            ),
                          ),
                          onTap: () async {},
                        ),),


                   
                  new Padding(
                      padding:
                          new EdgeInsets.only(left: 0, right:0, top: 10),
                      child: GestureDetector(
                          child: new Container(
                            width: 100,
                            child: new Card(
                              color: Colors.grey,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 10,
                                    ),
                                  ),
                                  Icon(
                                    Icons.cloud_upload,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                      top: 15,
                                    ),
                                  ),
                                  Text("Upload",
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 0,
                            ),
                          ),
                          onTap: () async {},
                        ),),



                   
                ],
              ),
                    
                  ],
                )
              },
              {
                'color': Colors.white,
                'background': Colors.deepPurpleAccent[400],
                'label': '3',
                'content': Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Que tipo de robô você quer?',
                      style: TextStyle(fontSize: 22.0),
                    ),
                    Text(
                      'Escolha entre Drone, Terrestre ou Artificial',
                      style: TextStyle(fontSize: 12.0),
                    ),
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
                      EdgeInsets.only(top: 10, left: 10, right: 30, bottom: 10),
                ),
                onTap: () async {
                  Navigator.pushNamed(context, "/novorobodrone");
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
                      EdgeInsets.only(top: 10, left: 10, right: 30, bottom: 10),
                ),
                onTap: () async {
                  Navigator.pushNamed(context, "/novoroboterrestre");
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
                      EdgeInsets.only(top: 10, left: 10, right: 30, bottom: 10),
                ),
                onTap: () async {Navigator.pushNamed(context, "/novoroboartificial");},
              ),
                  ])},
                  
            ],
          ),
        ));
  }
}
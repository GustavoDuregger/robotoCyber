import 'package:flutter/material.dart';

class GifConstruindo extends StatefulWidget {
  @override
  _GifConstruindoState createState() => _GifConstruindoState();
}

class _GifConstruindoState extends State<GifConstruindo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 142, 206, 1),
      body: Column(
        children: <Widget>[
          Image.asset("assets/roboconstruindo.gif"),
          Text(
            "Sucesso!!!",
            style: TextStyle(color: Colors.deepPurpleAccent[400], fontSize: 30),
          ),
          new Padding(
            padding: new EdgeInsets.only(
              top: 15,
            ),
          ),
          Text(
            "Seu robô já entrou na linha de produção e deve estar pronto em breve",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          new Padding(
            padding: new EdgeInsets.only(
              top: 35,
            ),
          ),
          GestureDetector(
            child: new Container(
              width: 300,
              height: 130,
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
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 50,
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(
                        top: 15,
                      ),
                    ),
                    Text("Voltar para tela inicial",
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.white)),
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
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}

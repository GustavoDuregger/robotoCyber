
import 'package:flutter/material.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/models/robo_terrestre_model.dart';

class TerrestreDetalhesScreen extends StatefulWidget {
  @override
  _TerrestreDetalhesScreenState createState() => _TerrestreDetalhesScreenState();
}

class _TerrestreDetalhesScreenState extends State<TerrestreDetalhesScreen> {
  
    RoboTerrestreModel roboModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();


  Widget build(BuildContext context) {
    roboModel = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text(roboModel.nome, style: TextStyle(fontSize: 20.0, color: Colors.white)),
      ),
      body: SingleChildScrollView(child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            labelValue('ID'),
            fieldValue(roboModel.id.toString()),
            espaco(),
            labelValue('Nome'),
            fieldValue(roboModel.nome),
            espaco(),
            labelValue('Vida útil'),
            fieldValue(roboModel.vidaUtil),
            espaco(),
            labelValue('Estado'),
            fieldValue(roboModel.estado),
            espaco(),
            labelValue('Comportameto 1'),
            fieldValue(roboModel.comportamento1),
            espaco(),
            labelValue('Comportameto 2'),
            fieldValue(roboModel.comportamento2),
            espaco(),
            labelValue('Comportameto 3'),
            fieldValue(roboModel.comportamento3),
            espaco(),
            labelValue('Sistema Operacional'),
            fieldValue(roboModel.sistemaOperacional),
            espaco(),
            labelValue('Quantidade'),
            fieldValue(roboModel.quantidade.toString()),
            espaco(),
            labelValue('Cognição'),
            fieldValue(roboModel.cognicao.toString()),
            espaco(),
            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.transparent)),
                      elevation: 10,
                      color: Colors.deepPurpleAccent[400],
                      textColor: Colors.white,
                child: Text("Treinar Cognição"),
                onPressed: () async {
                  var retorno = await Navigator.pushNamed(
                    context,
                    "/treinarterrestre",
                    arguments: roboModel,
                  );

                  if (retorno != null) {

                    roboModel = retorno as RoboTerrestreModel;

                    setState(() { });

                    scaffoldKey.currentState.showSnackBar(
                      new SnackBar(
                        content: Text(
                          'Corrigido com sucesso!',
                        ),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.content_copy),
        backgroundColor: Colors.deepPurpleAccent[400],
        onPressed: () {
         Navigator.pushNamed(context, "/construirrobofirststep");
        },
      ),
    );
  }

  SizedBox espaco() => SizedBox(
        height: 16,
      );

  Widget labelValue(String _label) {
    return Text(
      '$_label:',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, 1),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );
  }

  Widget fieldValue(String _value) {
    return Text(
      _value,
      style: TextStyle(
        color: Color.fromRGBO(64, 75, 96, .9),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
    );
  }
}
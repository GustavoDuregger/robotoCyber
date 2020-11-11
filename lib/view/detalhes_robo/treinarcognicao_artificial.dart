import 'package:flutter/material.dart';
import 'package:roboto/models/robo_artificial_model.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/models/robo_terrestre_model.dart';
import 'package:roboto/services/api_rest_service.dart';

class TreinarArtificialScreen extends StatefulWidget {
  @override
  _TreinarArtificialScreenState createState() => _TreinarArtificialScreenState();
}

class _TreinarArtificialScreenState extends State<TreinarArtificialScreen> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  RoboArtificialModel robo;

  Widget build(BuildContext context) {
    robo = ModalRoute.of(context).settings.arguments;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("Treinar Robo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                children: <Widget>[



                  TextFormField(
                    
                    initialValue: robo.cognicao.toString(),
                    decoration: new InputDecoration(
                      icon: const Icon(Icons.fast_forward),
                      hintText: '${robo.cognicao}',
                      labelText: 'Treinamento',
                      
                    ),
                    validator: (value) {
                      if ((value.isEmpty) || (double.parse(value) <= 0)) {
                        return 'O Robo não é capaz de atingir tal cognição';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      robo.cognicao = double.parse(value);
                    },
                    keyboardType: TextInputType.number,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RaisedButton(
                      child: Text("Treinar"),
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();

                          RoboArtificialService().update(robo);

                          Navigator.pushNamed(context, "/sucessotreinamento");
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/services/api_rest_service.dart';

class TreinarDroneScreen extends StatefulWidget {
  @override
  _TreinarDroneScreenState createState() => _TreinarDroneScreenState();
}

class _TreinarDroneScreenState extends State<TreinarDroneScreen> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  RoboDroneModel robo;

  Widget build(BuildContext context) {
    robo = ModalRoute.of(context).settings.arguments;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("Treinar Drone"),
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
                        return 'O Drone não é capaz de atingir tal cognição';
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

                          RoboDroneService().update(robo);

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

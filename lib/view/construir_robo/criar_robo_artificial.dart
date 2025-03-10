
import 'package:flutter/material.dart';
import 'package:roboto/models/robo_artificial_model.dart';
import 'package:roboto/services/api_rest_service.dart';

class RoboArtificialNovoScreen extends StatefulWidget {
  @override
  _RoboArtificialNovoScreenState createState() => _RoboArtificialNovoScreenState();
}

class _RoboArtificialNovoScreenState extends State<RoboArtificialNovoScreen> {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RoboArtificialModel roboModel = new RoboArtificialModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("Criar Robô Artificial"),
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
                    decoration: new InputDecoration(
                      icon: const Icon(Icons.assignment),
                      hintText: 'Digite o nome do robo',
                      labelText: 'Nome',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite o nome do robo';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roboModel.nome = value;
                      roboModel.vidaUtil= "Restam 3 Anos";
                      roboModel.estado = "Novo";
                      roboModel.quantidade = 1;
                      roboModel.cognicao = 0.10;
                    },
                  ),
                  


                  DropdownButtonFormField<String>(
                    value: roboModel.comportamento1,
                    items:
                        ["Patch Policial (Novo)", "Explorador", "Herói", "Sabio/guia", "Inocente", "Prestativo", "Amante", "Bobo da corte", "Fora da lei"]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label),
                                  value: label,
                                ))
                            .toList(),
                    decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      icon: const Icon(Icons.assignment_ind),
                      hintText: 'Comportamento 1',
                      labelText: 'Comportamento 1',
                    ),
                    validator: (value) {
                      if ((value == null)) {
                        return 'Selecione o comportamento';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roboModel.comportamento1 = value;
                    },
                    onChanged: (value) {
                      setState(() {
                        roboModel.comportamento1 = value;
                      });
                    },
                  ),


                  DropdownButtonFormField<String>(
                    value: roboModel.comportamento2,
                    items:
                        ["Patch Policial (Novo)", "Explorador", "Herói", "Sabio/guia", "Inocente", "Prestativo", "Amante", "Bobo da corte", "Fora da lei"]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label),
                                  value: label,
                                ))
                            .toList(),
                    decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      icon: const Icon(Icons.assignment_ind),
                      hintText: 'Comportamento 2',
                      labelText: 'Comportamento 2',
                    ),
                    validator: (value) {
                      if ((value == null)) {
                        return 'Selecione o comportamento';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roboModel.comportamento2 = value;
                    },
                    onChanged: (value) {
                      setState(() {
                        roboModel.comportamento2 = value;
                      });
                    },
                  ),

                  DropdownButtonFormField<String>(
                    value: roboModel.comportamento3,
                    items:
                        ["Patch Policial (Novo)", "Explorador", "Herói", "Sabio/guia", "Inocente", "Prestativo", "Amante", "Bobo da corte", "Fora da lei"]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label),
                                  value: label,
                                ))
                            .toList(),
                    decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      icon: const Icon(Icons.assignment_ind),
                      hintText: 'Comportamento 3',
                      labelText: 'Comportamento 3',
                    ),
                    validator: (value) {
                      if ((value == null)) {
                        return 'Selecione o comportamento';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roboModel.comportamento3 = value;
                    },
                    onChanged: (value) {
                      setState(() {
                        roboModel.comportamento3 = value;
                      });
                    },
                  ),



                DropdownButtonFormField<String>(
                    value: roboModel.sistemaOperacional,
                    items:
                        ["CyberOS", "Ubunto Linux", "WinServer"]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label),
                                  value: label,
                                ))
                            .toList(),
                    decoration: new InputDecoration(
                      alignLabelWithHint: true,
                      icon: const Icon(Icons.computer),
                      hintText: 'Sistema Operacional',
                      labelText: 'Sistema Operacional',
                    ),
                    validator: (value) {
                      if ((value == null)) {
                        return 'Selecione um Sistema Operacional';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roboModel.sistemaOperacional = value;
                    },
                    onChanged: (value) {
                      setState(() {
                        roboModel.sistemaOperacional = value;
                      });
                    },
                  ),
                  
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.transparent)),
                      elevation: 10,
                      color: Colors.deepPurpleAccent[400],
                      textColor: Colors.white,
                      child: Text("Gravar"),
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();

                          new RoboArtificialService().create(roboModel);

                          var mensagem =
                              roboModel.nome + ' cadastrado com sucesso!';

                          Navigator.pop(
                            context,
                            mensagem,
                          );
                        } else {
                          scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(
                                'Não foi possível gravar o documento.',
                              ),
                            ),
                          );
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
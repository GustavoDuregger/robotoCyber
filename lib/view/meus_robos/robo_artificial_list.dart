import 'package:flutter/material.dart';
import 'package:roboto/models/robo_artificial_model.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/services/api_rest_service.dart';
import 'package:roboto/widget/listview_load.dart';

class RoboArtificialListScreen extends StatefulWidget {
  @override
  _RoboArtificialListScreenState createState() => _RoboArtificialListScreenState();
}

class _RoboArtificialListScreenState extends State<RoboArtificialListScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  RoboArtificialService roboArtificialService = RoboArtificialService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("Meus Robôs Artificiais"),
      ),
      body: FutureBuilder<List>(
        future: roboArtificialService.findAll(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            String erroMessage = snapshot.error.toString();
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Erro ao carregar a lista de robos. \n Detalhes: $erroMessage'),
              ),
            );
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data.length > 0) {
                return buildListView(snapshot.data);
              } else {
                return Center(
                  child: Text("Nenhum robô cadastrado!"),
                );
              }
            } else {
              return Center(
                child: CardListViewLoading(),
              );
            }
          }
        },
      ),
    );
  }

  ListView buildListView(List<RoboArtificialModel> robos) {
    return ListView.builder(
      itemCount: robos == null ? 0 : robos.length,
      itemBuilder: (BuildContext ctx, int index) {
        return Dismissible(
          key: Key(robos[index].id.toString()),
          child: cardRobo(robos[index]),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            print(direction);
            roboArtificialService.delete(robos[index]);
            setState(() {});
          },
          background: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.pinkAccent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Card cardRobo(RoboArtificialModel robos) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 20.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(64, 61, 85, 1),
        ),
        child: ListTile(
          title: Text(
            "ID: ${robos.id} - ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Text(
                  robos.nome,
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
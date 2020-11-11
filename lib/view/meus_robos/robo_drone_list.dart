import 'package:flutter/material.dart';
import 'package:roboto/models/robo_drone_model.dart';
import 'package:roboto/services/api_rest_service.dart';
import 'package:roboto/widget/listview_load.dart';

class RoboDroneListScreen extends StatefulWidget {
  @override
  _RoboDroneListScreenState createState() => _RoboDroneListScreenState();
}

class _RoboDroneListScreenState extends State<RoboDroneListScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  RoboDroneService roboDroneService = RoboDroneService();

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
        title: Text("Meus Robôs Drones"),
      ),
      body: FutureBuilder<List>(
        future: roboDroneService.findAll(),
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

  ListView buildListView(List<RoboDroneModel> robos) {
    return ListView.builder(
      itemCount: robos == null ? 0 : robos.length,
      itemBuilder: (BuildContext ctx, int index) {
        return Dismissible(
          key: Key(robos[index].id.toString()),
          child: cardRobo(robos[index]),
          direction: DismissDirection.endToStart,
          onDismissed: (direction) {
            print(direction);
            roboDroneService.delete(robos[index]);
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

  Card cardRobo(RoboDroneModel robos) {
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
          color: Colors.deepPurpleAccent[700]
        ),
        child: ListTile(
          leading: Image.asset("assets/dronesfundo.png"),
          title: Text(
            "ID: ${robos.id} - " + robos.nome,
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
                  robos.sistemaOperacional,
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () async {
            await Navigator.pushNamed(
              context,
              "/detalhesRoboDrone",
              arguments: robos
            );

            setState(() {});}
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:roboto/view/chatbot_view.dart';
import 'package:roboto/view/controle_view.dart';
import 'package:roboto/view/equipe_view.dart';
import 'package:roboto/view/meus_robos/robo_drone_list.dart';
import 'package:roboto/view/meus_robos/robo_terrestre_list.dart';
import 'package:splashscreen/splashscreen.dart';

import 'view/homescreen_view.dart';
import 'view/meus_robos/meus_robos_options.dart';
import 'view/meus_robos/robo_artificial_list.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/controle': (context) =>ControleScreen(),
        '/equipe':(context)=> EquipeScreen(),
        '/chatbot':(context)=>ChatBotScreen(),
        '/meusrobosoptions':(context)=>MeusRobosOptions(),
        '/robodronelist':(context)=>RoboDroneListScreen(),
        '/roboterrestrelist':(context)=>RoboTerrestreListScreen(),
        '/roboartificiallist':(context)=>RoboArtificialListScreen()
      });
  }
}
import 'package:flutter/material.dart';
import 'package:roboto/view/chatbot_view.dart';
import 'package:roboto/view/construir_robo/criar_robo_drone_view.dart';
import 'package:roboto/view/construir_robo/criar_robo_terrestre_view.dart';
import 'package:roboto/view/construir_robo/first_step_view.dart';
import 'package:roboto/view/controle_view.dart';
import 'package:roboto/view/equipe_view.dart';
import 'package:roboto/view/meus_robos/robo_drone_list.dart';
import 'package:roboto/view/meus_robos/robo_terrestre_list.dart';
import 'view/construir_robo/criar_robo_artificial.dart';
import 'view/homescreen_view.dart';
import 'view/meus_robos/meus_robos_options.dart';
import 'view/meus_robos/robo_artificial_list.dart';
import 'widget/gif_robo.dart';


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
        '/roboartificiallist':(context)=>RoboArtificialListScreen(),
        '/construirrobofirststep':(context)=>FirstStep(),
        '/novoroboartificial':(context)=>RoboArtificialNovoScreen(),
        '/novoroboterrestre':(context)=>RoboTerrestreNovoScreen(),
        '/novorobodrone':(context)=>RoboDroneNovoScreen(),
        '/sucessocontruir':(context)=>GifConstruindo()
      });
  }
}
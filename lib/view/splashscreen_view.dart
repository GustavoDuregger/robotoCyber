import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'homescreen_view.dart';

class SplashScreenIntro extends StatefulWidget {
  SplashScreenIntro({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashScreenIntroState createState() => _SplashScreenIntroState();
}

class _SplashScreenIntroState extends State<SplashScreenIntro> {
  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    print(alturaTela);
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 4,
          navigateAfterSeconds: HomeScreen(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/splashscreen.gif"), fit: BoxFit.contain),
          ),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: alturaTela / 1.5),
          child: new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logoroboto.png"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
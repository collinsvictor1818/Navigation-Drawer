import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  State<StatefulWidget> createState() => initState();
}

class initState extends State<SplashScreen> {
  Widget build(BuildContext) {
    return initWidget();
  }
}

initWidget() {
  return Scaffold(
    body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: new Color.fromRGBO(148, 193, 61, 1)),
          /* gradient: LinearGradient(
            colors: [(new Color.fromRGBO(148, 193, 61, 1)),(new Color.fromRGBO(148, 193, 61, 1))],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ) */
        ),
        Center(
          child: Container(
            child: Image.asset("images/hkanisa.png"),
          ),
        )
      ],
    ),
  );
}

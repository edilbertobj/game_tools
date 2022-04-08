import 'package:flutter/material.dart';

class EnlaceF extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _EnlaceF();
}

class _EnlaceF extends State<EnlaceF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GAME TOOL'),
          backgroundColor: Colors.green,
        ),

      body: Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 120),
        alignment: Alignment.topCenter,
        child: Text("Enlazando a Facebook...",
          style: TextStyle(fontSize: 30, foreground: Paint()
            ..style =PaintingStyle.stroke
            ..strokeWidth =2
            ..color =Colors.green
          ),),
      ),
      Center(
      child: Text("El siguiente enlace te dirige a nuestra pagina oficial de facebook",
      semanticsLabel: "1Gru38NBWV7eRF7LUUFWOKiBRDBy4YqNMq6f216qYrtRI2if/9k"),
      ),
    ],
      ),
    );
  }
}
class EnlaceG extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _EnlaceG();
}

class _EnlaceG extends State<EnlaceG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GAME TOOL'),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 120),
            alignment: Alignment.topCenter,
            child: Text("Enlazando a Gmail...",
              style: TextStyle(fontSize: 30, foreground: Paint()
                ..style =PaintingStyle.stroke
                ..strokeWidth =2
                ..color =Colors.green
              ),),
          ),
          Center(
            child: Text("El siguiente enlace te dirige a nuestro correo oficial de Gmail",
                semanticsLabel: "1Gru38NBWV7eRF7LUUFWOKiBRDBy4YqNMq6f216qYrtRI2if/9k"),
          ),
        ],
      ),
    );
  }
}
class EnlaceP extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _EnlaceP();
}

class _EnlaceP extends State<EnlaceP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GAME TOOL'),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 120),
            alignment: Alignment.topCenter,
            child: Text("Enlazando a Play Store ...",
              style: TextStyle(fontSize: 30, foreground: Paint()
                ..style =PaintingStyle.stroke
                ..strokeWidth =2
                ..color =Colors.green
              ),),
          ),
          Center(
            child: Text("El siguiente enlace te dirige a nuestra App en Play Store",
                semanticsLabel: "1Gru38NBWV7eRF7LUUFWOKiBRDBy4YqNMq6f216qYrtRI2if/9k"),
          ),
        ],
      ),
    );
  }
}

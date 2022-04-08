import 'dart:async';
import 'package:flutter/material.dart';
import 'package:game_tools/Administradores/edicion.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_tools/main.dart';

class Creacion extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Creacion();
}

class _Creacion extends State<Creacion> {
  final firestoreInstance = FirebaseFirestore.instance;
  //CollectionReference TORNEOS=
  //FirebaseFirestore.instance.collection('TORNEOS');
  TextEditingController nameController = TextEditingController();
  String Nombre = "";
  TextEditingController numController = TextEditingController();
  String contrasena= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GAME TOOL"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(children: <Widget>[
            Container(
              height: 75,
              alignment: Alignment.center,
              child: Text("Crea tu torneo",
                style: TextStyle(fontSize: 30, foreground: Paint()
                  ..style =PaintingStyle.stroke
                  ..strokeWidth =2
                  ..color =Colors.green
                ),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nombre del torneo"
                ),
                onChanged: (text) {
                  setState(() {
                    Nombre= text;
                  });
                  //TORNEOS.doc("torneo1").set({'nombre': value});
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: numController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Contraseña"
                ),
                onChanged: (text) {
                  setState(() {
                    contrasena = text;
                  });
                },
              ),
            ),
            RaisedButton(
              child: Text("Guardar"),
              onPressed: () {
                firestoreInstance.collection(Nombre).add(
                    {
                      "Nombre" : Nombre,
                      "Contraseña" : contrasena,
                      "Participantes" : {
                      }
                    }).then((value){
                  print(value.id);
                });
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Edicion()),); },
            )
          ],)
      ),
    );
  }
}
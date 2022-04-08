import 'package:flutter/material.dart';
import 'package:game_tools/Administradores/creacion.dart';
import 'package:game_tools/enlaces.dart';
import 'package:game_tools/participantes/torneoscreados.dart';


class PaginaInicio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GAME TOOL"),
          backgroundColor: Colors.green,
        ),
        body: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,),
                    RaisedButton(
                      child: Text("Crear nuevo Torneo"),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () { Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Creacion()),); },
                    ),
                    SizedBox(
                        width: 50.0),
                    RaisedButton(
                      child:Text("Ir A Torneo Existente"),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () { Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Creados()),); },
                    )
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      child: Icon(Icons.facebook,),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => EnlaceF()),); },
                    ),
                    RaisedButton(
                        child: Icon(Icons.mail),
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => EnlaceG()),);
                        }),
                    SizedBox(
                      width: 100,),
                    RaisedButton(
                      child: Text("Dejanos 5 Etrellas .."),
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => EnlaceP()),); },
                    )
                  ]
              )
            ]
        )
    );
  }
}
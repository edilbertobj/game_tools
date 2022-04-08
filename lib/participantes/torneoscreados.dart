import 'package:flutter/material.dart';


class Creados extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _Creados();
  }
}
class _Creados extends State<Creados> {
  @override
  Widget build(BuildContext context) {
    TextEditingController TorneoController = TextEditingController();
    String NombreT = "";
    return Scaffold(
      appBar: AppBar(
        title: Text("GAME TOOL"), backgroundColor: Colors.green,),
      body:
      ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 120),
            alignment: Alignment.topCenter,
            child: Text("Infomate sobre tu torneo",
              style: TextStyle(fontSize: 30, foreground: Paint()
                ..style =PaintingStyle.stroke
                ..strokeWidth =2
                ..color =Colors.green
              ),),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: TorneoController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "full name"
              ),
              onChanged: (text){
                setState(() {
                  NombreT=text;
                });
              },
            ),
          ),
          Center(child: Text("Estuadiantes"),),
          DataTable(
            columns: [
              DataColumn(label: Text("matricula")),
              DataColumn(label: Text("nombre")),
              DataColumn(label: Text("Edad")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("2020")),
                DataCell(Text("Alma")),
                DataCell(Text("20")),
              ]),
              DataRow(cells: [
                DataCell(Text("2021")),
                DataCell(Text("Alma")),
                DataCell(Text("21")),
              ]),
              DataRow(cells: [
                DataCell(Text("2022")),
                DataCell(Text("Brayan")),
                DataCell(Text("22")),
              ]),
            ],
          )
        ],
      ),
    );
  }
}


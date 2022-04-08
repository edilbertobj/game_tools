import 'package:flutter/material.dart';
import 'package:game_tools/Administradores/creacion.dart';

class Edicion extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _Edicion();
}

class _Edicion extends State<Edicion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GAME TOOL'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 120),
        alignment: Alignment.topCenter,
        child: Text("Editando Tu Torneo",
            style: TextStyle(fontSize: 30, foreground: Paint()
              ..style =PaintingStyle.stroke
              ..strokeWidth =2
              ..color =Colors.green
        ),),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('OPCIONES'),
            ),
            ListTile(
              title: const Text('Informacion del torneo'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Editar Tipo De Torneo'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Exportar Torneo'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Seleccion De Torneos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Ayuda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],

        ),
      ),
    );
  }
}
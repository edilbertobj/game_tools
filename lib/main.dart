import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game_tools/Administradores/creacion.dart';
import 'package:game_tools/inicio.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
  runApp(GameTools());
}
@override

class GameTools extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Game tools",
      home: new PaginaInicio(),
    );
  }
}

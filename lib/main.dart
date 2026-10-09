import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica/rutas/rutas.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Rutas.rutaInicial,
      routes: Rutas.rutaApk,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica/screens/nuevatarea.dart';

class Mistareas extends StatefulWidget{
  const Mistareas({super.key,});

  @override
  State<Mistareas> createState() => _MistareasState();
}

class _MistareasState extends State<Mistareas> {
  static final List<String> tareas = [
    "Completar practica flutter",
    "Diseñar interfaz Material 3",
    "Revisar documentacion de Navigator"
  ];

  static final List<String> descripciones = [
    "Implementar rutas nombradas, widgest modulares y navegacion...",
    "Definir paleta indigo, tarjetas elevadas y botones de accion...",
    "Estudiar el comportamiento de pushNamed, pop y el paso de..."
  ];

  static var cont = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis Tareas"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              spacing: 20,
              children: [
                Icon(Icons.search_rounded),
                Icon(Icons.person)
              ],
            ),
          ),
        ],
        elevation: 5.0,
        shadowColor: Colors.black,
      ),

      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Text("Pendientes", style: TextStyle(fontWeight: FontWeight(600)),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 200),
                child: Text("$cont tareas"),
              )
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(10),
              itemCount: tareas.length,
              itemBuilder: (context, index){
                return Container(
                  width: 400,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo de la tarjeta
                    borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Color de la sombra con opacidad
                        blurRadius: 8.0, // Qué tan difuminada se ve la sombra
                        spreadRadius: 2.0, // Qué tanto se extiende la sombra
                        offset: const Offset(0, 4), // Desplazamiento horizontal y vertical
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Icon(Icons.radio_button_off, color: Colors.grey,),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(tareas[index], style: TextStyle(fontWeight: FontWeight(600)),),
                    ),
                    subtitle: Text(descripciones[index]),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Icon(Icons.arrow_forward_ios_outlined, size: 15.0,),
                    ),

                  ),
                );
              },
              separatorBuilder: (context, index){
                return SizedBox(height: 10,);
              },
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        shape: const CircleBorder(),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nuevatarea())
          );
        },
        child:Icon(Icons.add, color: Colors.white,)
      ),
    );
  }
}
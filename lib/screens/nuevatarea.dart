import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica/screens/mistareas.dart';

class Nuevatarea extends StatelessWidget{
  const Nuevatarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nueva Tarea"),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Text("Titulo de la tarea"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Container(
              width: 340,
              height: 50,
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
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "¿Que necesitas hacer?",
                  ),
                ),
              )
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 250, top: 15),
            child: Text("Descripción"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Container(
                width: 340,
                height: 250,
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Agrega detalles o notas adicionales...",
                    ),
                  ),
                )
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: SizedBox(
              width: 340,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple
                  ),
                  child: Text("Guardar Tarea", style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: 340,
              child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Cancelar", style: TextStyle(color: Colors.black54),)
              ),
            ),
          )
        ],
      ),
      
    );
  }

}
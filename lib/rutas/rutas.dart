import 'package:practica/screens/mistareas.dart';
import 'package:practica/screens/nuevatarea.dart';

class Rutas {
  static String rutaInicial = "/vista1";

  static final rutaApk = {
    "/vista1" : (context) => Mistareas(),
    "/vista2" : (context) => Nuevatarea()
  };
}
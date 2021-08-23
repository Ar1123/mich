import 'package:flutter/cupertino.dart';
import 'package:proyecto/pages/login.dart';
import 'package:proyecto/pages/registro.dart';

getRoutes() {
  final rutas = {
    'login': (BuildContext context) => LogionPage(),
    'registro': (BuildContext context) => RegistroPage(),
  };

  return rutas;
}

import 'package:flutter/material.dart';
import 'package:ubbi/telas/home.dart';
import 'package:ubbi/telas/rotas_page.dart';

// final ThemeData temaPadrao = ThemeData(
//   primaryColor: const Color(0xff37474f),
//   accentColor: const Color(0xff546e7a),
  
// );

final ThemeData temaPadrao = ThemeData(
colorScheme: const ColorScheme.light(
  primary: Color(0xff37474f),
  secondary: Color(0xff546e7a),

),
);

void main() => runApp( MaterialApp(
  title: "Uber",
  home: const Home(),
  theme: temaPadrao,
  initialRoute: "/",
  onGenerateRoute: Rotas.gerarRotas,
  debugShowCheckedModeBanner: false,
),);







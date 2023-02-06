import 'package:flutter/material.dart';
import 'package:ubbi/telas/cadastro_page.dart';
import 'package:ubbi/telas/home.dart';

class Rotas {
  static Route<dynamic>?  gerarRotas(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case "/cadastro":
        return MaterialPageRoute(
          builder: (_) => const CadastroPage(),
        );
      default:
        _erroRota();
    }
    return null;
  }

  void erroRota() {}
  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Tela não encontrada"),
          ),
          body: const Center(
            child: Text("Tela não encontrada"),
          ),
        );
      },
    );

  }
}

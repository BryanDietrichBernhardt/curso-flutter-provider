import 'package:flutter/material.dart';

class Pessoa with ChangeNotifier {
  String nome;
  int idade;

  Pessoa({
    this.nome = "João",
    this.idade = 30,
  });

  void incrementaIdade() {
    idade++;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/pessoa.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return Pessoa();
      },
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Provider"),
          ),
        ),
        body: Center(
          child: Text(
            '${(context).select((Pessoa p) => p.nome)} tem ${(context).select((Pessoa p) => p.idade)} anos de idade.',
            style: const TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Provider.of<Pessoa>(context, listen: false).incrementaIdade(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

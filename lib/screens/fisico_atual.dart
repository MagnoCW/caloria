import 'package:caloria/screens/informacoes.dart';
import 'package:flutter/material.dart';

class FisicoAtual extends StatefulWidget {
  const FisicoAtual({super.key});

  @override
  State<FisicoAtual> createState() => _FisicoAtualState();
}

class _FisicoAtualState extends State<FisicoAtual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "CalorieTrack",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const Text(
                "CALCULE SEU GASTO DE ENERGIA DIÁRIO",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Qual condicionamento físico mais se assemelha ao seu atual:",
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Abaixo do Peso Ideal",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Próximo do Peso Ideal",
                    style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Muito acima do Peso",
                    style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Atleta", style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Informacoes()));
                },
                child: const Text("Avançar", style: TextStyle(fontSize: 20)),
              ),
            ])));
  }
}

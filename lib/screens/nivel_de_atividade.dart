import 'package:caloria/screens/resultado.dart';
import 'package:flutter/material.dart';

class NivelDeAtividade extends StatelessWidget {
  const NivelDeAtividade({super.key});

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
                "Qual seu nível de atividade física:",
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sedentário (FA= 1.2)",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Pouco Ativo (FA= 1.4)",
                    style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Moderamente ativo (FA= 1.5)",
                    style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Muito ativo (FA= 1.7)",
                    style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Resultado()));
                },
                child: const Text("Calcular", style: TextStyle(fontSize: 20)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Voltar", style: TextStyle(fontSize: 20)),
              ),
            ])));
  }
}

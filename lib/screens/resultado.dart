import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key});

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
            child: const Column(children: [
              Text(
                "Pronto! Esse é o seu gasto calórico diário estimado",
              ),
              Text(
                "GASTO ENERGÉTICO DIÁRIO",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 16),
              ),
              Text("META DE PROTEÍNAS", style: TextStyle(fontSize: 16)),
              Text(
                "",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "QUANTIDADE DE CALORIAS DIÁRIAS PARA EMAGRECER",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Text(
                "",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "QUANTIDADE DE CALORIAS DIÁRIAS PARA HIPERTROFIA",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Text(
                "",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "QUANTIDADE DE CALORIAS DIÁRIAS PARA MANTER O PESO",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Text(
                "",
                style: TextStyle(fontSize: 16),
              ),
            ])));
  }
}

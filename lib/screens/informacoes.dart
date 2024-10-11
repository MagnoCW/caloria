import 'package:caloria/screens/nivel_de_atividade.dart';
import 'package:flutter/material.dart';

class Informacoes extends StatefulWidget {
  const Informacoes({super.key});

  @override
  State<Informacoes> createState() => _InformacoesState();
}

class _InformacoesState extends State<Informacoes> {
  String? escolhaUsuario;
  double idade = 35;
  double altura = 170;
  double peso = 100;
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
                "Preencha com as suas informações...",
              ),
              const Text("Gênero",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Feminino"),
                  Radio(
                      value: "f",
                      groupValue: escolhaUsuario,
                      onChanged: (String? escolha) {
                        setState(() {
                          escolhaUsuario = escolha;
                        });
                      }),
                  const Text("Masculino"),
                  Radio(
                      value: "m",
                      groupValue: escolhaUsuario,
                      onChanged: (String? escolha) {
                        setState(() {
                          escolhaUsuario = escolha;
                        });
                      }),
                ],
              ),
              const Text("Idade"),
              Row(
                children: [
                  Expanded(
                    child: Slider(
                      value: idade,
                      min: 18,
                      max: 80,
                      label: "${idade.round()} anos",
                      divisions: 62,
                      onChanged: (double novaIdade) {
                        setState(() {
                          idade = novaIdade;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50, // Ajuste o tamanho conforme necessário
                    child: Text(
                      "${idade.round()} anos",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Text("Altura"),
              Row(
                children: [
                  Expanded(
                    child: Slider(
                      value: altura,
                      min: 130,
                      max: 230,
                      label: "${altura.round()} cm",
                      divisions: 100,
                      onChanged: (double novaAltura) {
                        setState(() {
                          altura = novaAltura;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      "${altura.round()} cm",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Text("Peso"),
              Row(
                children: [
                  Expanded(
                    child: Slider(
                      value: peso,
                      min: 40,
                      max: 180,
                      label: "${peso.round()} kg",
                      divisions: 62,
                      onChanged: (double novoPeso) {
                        setState(() {
                          peso = novoPeso;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      "${peso.round()} kg",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NivelDeAtividade()));
                },
                child: const Text("Avançar", style: TextStyle(fontSize: 20)),
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

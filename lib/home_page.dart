import 'package:calculadora_academica/components/drawer_menu.dart';
import 'package:calculadora_academica/components/input_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController tr1Controller = TextEditingController();
  TextEditingController tr2Controller = TextEditingController();
  TextEditingController tr3Controller = TextEditingController();
  TextEditingController p1Controller = TextEditingController();
  TextEditingController tr4Controller = TextEditingController();
  TextEditingController tr5Controller = TextEditingController();
  TextEditingController p2Controller = TextEditingController();
  TextEditingController tr6Controller = TextEditingController();
  TextEditingController tr7Controller = TextEditingController();
  TextEditingController p3Controller = TextEditingController();
  TextEditingController p4Controller = TextEditingController();
  TextEditingController tr8Controller = TextEditingController();
  TextEditingController tr9Controller = TextEditingController();
  TextEditingController subController = TextEditingController();

  bool validaCampos() {
    if (tr1Controller.text.isEmpty) {
      return false;
    }
    if (tr2Controller.text.isEmpty) {
      return false;
    }
    if (tr3Controller.text.isEmpty) {
      return false;
    }
    if (p1Controller.text.isEmpty) {
      return false;
    }
    if (tr4Controller.text.isEmpty) {
      return false;
    }
    if (tr5Controller.text.isEmpty) {
      return false;
    }
    if (p2Controller.text.isEmpty) {
      return false;
    }
    if (tr6Controller.text.isEmpty) {
      return false;
    }
    if (tr7Controller.text.isEmpty) {
      return false;
    }
    if (p3Controller.text.isEmpty) {
      return false;
    }
    if (p4Controller.text.isEmpty) {
      return false;
    }
    if (tr8Controller.text.isEmpty) {
      return false;
    }
    if (tr9Controller.text.isEmpty) {
      return false;
    }
    if (subController.text.isEmpty) {
      return false;
    }
    return true;
  }

  double resultado = 0;

  double calculaMedia() {
    List<double> notas = [
      double.parse(tr1Controller.text),
      double.parse(tr2Controller.text),
      double.parse(tr3Controller.text),
      double.parse(p1Controller.text),
      double.parse(tr4Controller.text),
      double.parse(tr5Controller.text),
      double.parse(p2Controller.text),
      double.parse(tr6Controller.text),
      double.parse(tr7Controller.text),
      double.parse(p3Controller.text),
      double.parse(p4Controller.text),
      double.parse(tr8Controller.text),
      double.parse(tr9Controller.text),
      double.parse(subController.text),
    ];

    resultado =
        notas.reduce((value, element) => value + element) / notas.length;
    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Calculadora acadêmica",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Insira as notas abaixo",
                style: TextStyle(fontSize: 20),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InputField(textNote: "tr1", controller: tr1Controller),
                    InputField(textNote: "tr2", controller: tr2Controller),
                    InputField(textNote: "tr3", controller: tr3Controller),
                    InputField(textNote: "p1", controller: p1Controller),
                    InputField(textNote: "tr4", controller: tr4Controller),
                    InputField(textNote: "tr5", controller: tr5Controller),
                    InputField(textNote: "p2", controller: p2Controller),
                    InputField(textNote: "tr6", controller: tr6Controller),
                    InputField(textNote: "tr7", controller: tr7Controller),
                    InputField(textNote: "p3", controller: p3Controller),
                    InputField(textNote: "p4", controller: p4Controller),
                    InputField(textNote: "tr8", controller: tr8Controller),
                    InputField(textNote: "tr9", controller: tr9Controller),
                    InputField(textNote: "sub", controller: subController),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Resultado da média: ${resultado.toStringAsFixed(1)}",
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        if (validaCampos()) {
                          setState(() {
                            calculaMedia();
                          });
                        } else {
                          const snackBar = SnackBar(
                            content: Text("Preencha todos os campos"),
                            duration: Duration(seconds: 2),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Calcular",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

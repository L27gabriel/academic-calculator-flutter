import 'package:calculadora_academica/components/drawer_menu.dart';
import 'package:calculadora_academica/components/text_note.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nota1 = TextEditingController();
  TextEditingController nota2 = TextEditingController();
  TextEditingController nota3 = TextEditingController();
  TextEditingController nota4 = TextEditingController();
  TextEditingController nota5 = TextEditingController();
  TextEditingController nota6 = TextEditingController();
  TextEditingController nota7 = TextEditingController();
  TextEditingController nota8 = TextEditingController();
  TextEditingController nota9 = TextEditingController();
  TextEditingController nota10 = TextEditingController();
  TextEditingController nota11 = TextEditingController();
  TextEditingController nota12 = TextEditingController();
  TextEditingController nota13 = TextEditingController();
  TextEditingController nota14 = TextEditingController();

  double resultado = 0;

  final snackBar = const SnackBar(
    content: Text("Preencha todos os campos"),
  );

  bool validaCampos() {
    if (nota1.text.isEmpty) {
      return false;
    }
    if (nota2.text.isEmpty) {
      return false;
    }
    if (nota3.text.isEmpty) {
      return false;
    }
    if (nota4.text.isEmpty) {
      return false;
    }
    if (nota5.text.isEmpty) {
      return false;
    }
    if (nota6.text.isEmpty) {
      return false;
    }
    if (nota7.text.isEmpty) {
      return false;
    }
    if (nota8.text.isEmpty) {
      return false;
    }
    if (nota8.text.isEmpty) {
      return false;
    }
    if (nota9.text.isEmpty) {
      return false;
    }
    if (nota10.text.isEmpty) {
      return false;
    }
    if (nota11.text.isEmpty) {
      return false;
    }
    if (nota12.text.isEmpty) {
      return false;
    }
    if (nota13.text.isEmpty) {
      return false;
    }
    if (nota14.text.isEmpty) {
      return false;
    }
    return true;
  }

  double calculaMedia() {
    double tr1 = double.parse(nota1.text);
    double tr2 = double.parse(nota2.text);
    double tr3 = double.parse(nota3.text);
    double p1 = double.parse(nota4.text);
    double tr4 = double.parse(nota5.text);
    double tr5 = double.parse(nota6.text);
    double p2 = double.parse(nota7.text);
    double tr6 = double.parse(nota8.text);
    double tr7 = double.parse(nota9.text);
    double p3 = double.parse(nota10.text);
    double p4 = double.parse(nota11.text);
    double tr8 = double.parse(nota12.text);
    double tr9 = double.parse(nota13.text);
    double sub = double.parse(nota14.text);

    resultado = (tr1 +
            tr2 +
            tr3 +
            p1 +
            tr4 +
            tr5 +
            p2 +
            tr6 +
            tr7 +
            p3 +
            p4 +
            tr8 +
            tr9 +
            sub) /
        14;
    return resultado;
  }

  List<double> numeros = [];

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
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR1"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota1,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR2"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota2,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR3"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota3,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "P1"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota4,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR4"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota5,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR5"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota6,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "P2"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota7,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR6"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota8,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR7"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota9,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "P3"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota10,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "P4"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota11,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR8"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota12,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "TR9"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota13,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNote(text: "SUB"),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1)),
                          width: 300,
                          child: TextField(
                            controller: nota14,
                            textAlign: TextAlign.end,
                            keyboardType: TextInputType.number,
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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

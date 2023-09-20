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
                          "Resultado da média: $resultado",
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        setState(() {});
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

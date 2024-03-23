import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controleTitulo = TextEditingController();
    TextEditingController _controleDescricao = TextEditingController();

    void _exibirTelaCadastro() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Adicionar Nota"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _controleTitulo,
                    autofocus: true,
                    decoration: const InputDecoration(
                        labelText: "Título",
                        hintText: "Digite o título aqui..."),
                  ),
                  TextField(
                    controller: _controleDescricao,
                    decoration: const InputDecoration(
                        labelText: "Descrição",
                        hintText: "Digite a descrição aqui..."),
                  )
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancelar")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Salvar"))
              ],
            );
          });
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Anotações"), centerTitle: true),
      body: Container(),
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
          onPressed: _exibirTelaCadastro,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add)),
    );
  }
}

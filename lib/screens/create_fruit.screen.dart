import 'package:flutter/material.dart';
import '../domain/fruit.dart';
import '../snippets.dart';

class CreateFruitScreen extends StatefulWidget {
  final Function(Fruit) onPress;

  const CreateFruitScreen({super.key, required this.onPress});

  @override
  State<CreateFruitScreen> createState() => _CreateFruitScreenState();
}

class _CreateFruitScreenState extends State<CreateFruitScreen> {
  late TextEditingController _nameController;
  late TextEditingController _priceController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    super.initState();
  }

  _onPressed() {
    widget.onPress(Fruit(
      name: _nameController.text,
      price: _priceController.text,
    ));

    closeRoute(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastrar fruta")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: inputDecoration(label: "Informe o nome"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: _priceController,
                decoration: inputDecoration(label: "Informe o valor"),
              ),
            ),
            ElevatedButton(onPressed: _onPressed, child: const Text("Salvar"))
          ],
        ),
      ),
    );
  }
}

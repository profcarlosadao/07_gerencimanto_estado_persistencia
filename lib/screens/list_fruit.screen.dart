import 'package:aula07_gerenciamento_de_estado_persistencia/screens/widget/content_change_notify.dart';
import 'package:flutter/material.dart';
import 'controller/fruit_change_notify.controller.dart';
import 'create_fruit.screen.dart';
import '../snippets.dart';

class ListFruit extends StatefulWidget {
  const ListFruit({super.key});

  @override
  State<ListFruit> createState() => _ListFruitState();
}

class _ListFruitState extends State<ListFruit> {
  late FruitChangeNotifyController _fruitChangeNotifyController;

  @override
  void initState() {
    _fruitChangeNotifyController = FruitChangeNotifyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Frutas")),
      body: ContentChangeNotify(controller: _fruitChangeNotifyController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openRoute(
            context,
            CreateFruitScreen(
              onPress: (fruit) {
                _fruitChangeNotifyController.addFruit(fruit);
              },
            ),
          );
        },
        child: const Icon(Icons.plus_one_sharp),
      ),
    );
  }
}

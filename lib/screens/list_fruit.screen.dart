import 'package:flutter/material.dart';
import 'controller/fruit_get.controller.dart';
import 'create_fruit.screen.dart';
import '../snippets.dart';
import 'widget/content_get.widget.dart';

class ListFruit extends StatefulWidget {
  const ListFruit({super.key});

  @override
  State<ListFruit> createState() => _ListFruitState();
}

class _ListFruitState extends State<ListFruit> {
  late FruitGetController _getController;

  @override
  void initState() {
    _getController = FruitGetController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Frutas")),
      body: ContentGetWidget(controller: _getController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openRoute(
            context,
            CreateFruitScreen(
              onPress: (fruit) {
                _getController.addFruit(fruit);
              },
            ),
          );
        },
        child: const Icon(Icons.plus_one_sharp),
      ),
    );
  }
}

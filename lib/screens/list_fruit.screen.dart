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
      body: ListenableBuilder(
        listenable: _fruitChangeNotifyController,
        builder: (BuildContext context, Widget? child) {
          return ListView.builder(
            itemCount: _fruitChangeNotifyController.fruits.length,
            itemBuilder: (BuildContext context, int index) {
              final fruit = _fruitChangeNotifyController.fruits[index];
              return ListTile(
                title: Text(fruit.name),
                subtitle: Text(fruit.price),
              );
            },
          );
        },
      ),
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
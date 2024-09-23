import 'package:aula07_gerenciamento_de_estado_persistencia/screens/controller/fruit_change_notify.controller.dart';
import 'package:flutter/material.dart';

class ContentChangeNotify extends StatelessWidget {
  final FruitChangeNotifyController controller;

  const ContentChangeNotify({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (BuildContext context, Widget? child) {
        return ListView.builder(
          itemCount: controller.fruits.length,
          itemBuilder: (BuildContext context, int index) {
            final fruit = controller.fruits[index];
            return ListTile(
              title: Text(fruit.name),
              subtitle: Text(fruit.price),
            );
          },
        );
      },
    );
  }
}

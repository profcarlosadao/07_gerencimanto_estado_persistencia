import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/fruit_get.controller.dart';

class ContentGetWidget extends StatelessWidget {
  final FruitGetController controller;

  const ContentGetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
          itemCount: controller.fruits.length,
          itemBuilder: (BuildContext context, int index) {
            final fruit = controller.fruits[index];
            return ListTile(
              title: Text(fruit.name),
              subtitle: Text(fruit.price),
            );
          });
    });
  }
}

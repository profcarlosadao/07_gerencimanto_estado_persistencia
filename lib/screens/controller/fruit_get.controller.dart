import 'package:get/get.dart';
import '../../domain/fruit.dart';

class FruitGetController extends GetxController {
  final Rx<List<Fruit>> _fruits = Rx([]);

  List<Fruit> get fruits => _fruits.value;

  addFruit(Fruit value) {
    _fruits.value = List.from(_fruits.value)..add(value);
  }

  removeFruit(Fruit value) {
    _fruits.value = List.from(_fruits.value)..remove(value);
  }
}

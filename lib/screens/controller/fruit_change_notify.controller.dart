import 'package:flutter/cupertino.dart';
import '../../domain/fruit.dart';

class FruitChangeNotifyController extends ChangeNotifier {
  final List<Fruit> _fruits = [];

  List<Fruit> get fruits => _fruits;

  void addFruit(Fruit value) {
    _fruits.add(value);
    notifyListeners();
  }

  void removeFruit(Fruit value) {
    _fruits.remove(value);
    notifyListeners();
  }
}

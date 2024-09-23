import 'package:flutter/cupertino.dart';
import '../../datasource/fruit_datasource.dart';
import '../../domain/fruit.dart';

class FruitChangeNotifyController extends ChangeNotifier {
  late FruitDataSource _fruitDataSource;
  late List<Fruit> _fruits;

  List<Fruit> get fruits => _fruits;

  FruitChangeNotifyController() {
    _fruits = [];
    _fruitDataSource = FruitDataSource();
    _initializeController();
  }

  Future<void> _initializeController() async {
    await _fruitDataSource.initPreference();
    _fruits = await _fruitDataSource.loadFruits();
    notifyListeners();
  }

  void addFruit(Fruit value) {
    _fruits.add(value);
    _fruitDataSource.saveFruits(_fruits);
    notifyListeners();
  }

  void removeFruit(Fruit value) {
    _fruits.remove(value);
    _fruitDataSource.saveFruits(_fruits);
    notifyListeners();
  }
}

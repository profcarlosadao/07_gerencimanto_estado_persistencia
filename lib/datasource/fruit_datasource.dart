import 'package:shared_preferences/shared_preferences.dart';
import '../domain/fruit.dart';

class FruitDataSource {
  late SharedPreferences prefs;

  FruitDataSource();

  initPreference() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<List<Fruit>> loadFruits() async {
    List<String>? fruitListJson = prefs.getStringList("fruits");
    return fruitListJson != null
        ? fruitListJson.map((fruit) => Fruit.fromJson(fruit)).toList()
        : [];
  }

  saveFruits(List<Fruit> fruits) async {
    final List<String> fruitListJson = fruits.map((fruit) => fruit.toJson()).toList();
    await prefs.setStringList("fruits", fruitListJson);
  }
}

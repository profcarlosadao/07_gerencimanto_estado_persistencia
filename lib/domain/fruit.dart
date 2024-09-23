import 'dart:convert';

class Fruit {
  String name;
  String price;

  Fruit({required this.name, required this.price});

  factory Fruit.fromMap(Map<String, dynamic> map) {
    return Fruit(name: map["name"], price: map["price"]);
  }

  factory Fruit.fromJson(String source) => Fruit.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {"name": name, "price": price};
  }

  String toJson() => jsonEncode(toMap());
}

import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  final String name;
  final double calories;
  final double servingSizeG;
  final double fatTotalG;
  final double fatSaturatedG;
  final int proteinG;
  final int sodiumMg;
  final int potassiumMg;
  final int cholesterolMg;
  final int carbohydratesTotalG;
  final int fiberG;
  final int sugarG;

  Products({
    required this.name,
    required this.calories,
    required this.servingSizeG,
    required this.fatTotalG,
    required this.fatSaturatedG,
    required this.proteinG,
    required this.sodiumMg,
    required this.potassiumMg,
    required this.cholesterolMg,
    required this.carbohydratesTotalG,
    required this.fiberG,
    required this.sugarG,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        name: json["name"],
        calories: json["calories"]?.toDouble(),
        servingSizeG: json["serving_size_g"]?.toDouble(),
        fatTotalG: json["fat_total_g"]?.toDouble(),
        fatSaturatedG: json["fat_saturated_g"]?.toDouble(),
        proteinG: json["protein_g"],
        sodiumMg: json["sodium_mg"],
        potassiumMg: json["potassium_mg"],
        cholesterolMg: json["cholesterol_mg"],
        carbohydratesTotalG: json["carbohydrates_total_g"],
        fiberG: json["fiber_g"],
        sugarG: json["sugar_g"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "calories": calories,
        "serving_size_g": servingSizeG,
        "fat_total_g": fatTotalG,
        "fat_saturated_g": fatSaturatedG,
        "protein_g": proteinG,
        "sodium_mg": sodiumMg,
        "potassium_mg": potassiumMg,
        "cholesterol_mg": cholesterolMg,
        "carbohydrates_total_g": carbohydratesTotalG,
        "fiber_g": fiberG,
        "sugar_g": sugarG,
      };
}

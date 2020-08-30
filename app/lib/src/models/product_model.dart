// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.name,
    this.image,
    this.unit,
    this.price,
    this.stock,
  });

  String name;
  String image;
  String unit;
  double price;
  int stock;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        image: json["image"],
        unit: json["unit"],
        price: json["price"].toDouble(),
        stock: json["stock"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "unit": unit,
        "price": price,
        "stock": stock,
      };
}

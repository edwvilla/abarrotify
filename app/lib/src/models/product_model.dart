// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) =>
    Product.fromJson(json.decode(str) as Map<String, dynamic>);

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.name,
    this.image,
    this.unit,
    this.price,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json['name'].toString(),
        image: json['image'].toString(),
        unit: json['unit'].toString(),
        price: json['price'] as double,
        category: json['category'].toString(),
      );

  String name;
  String image;
  String unit;
  double price;
  String category;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'image': image,
        'unit': unit,
        'price': price,
        'category': category,
      };
}

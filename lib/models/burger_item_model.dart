import 'package:flutter/material.dart';

class BurgerItemModel {
  final String title;
  final int price;

  const BurgerItemModel({
    required this.title,
    required this.price,
  });

  factory BurgerItemModel.fromJson(Map<String, dynamic> json) {
    print(json["id"]);
    print(json["title"]);
    return BurgerItemModel(
      title: json["title"],
      price: (json["price"]),
    );
  }
}

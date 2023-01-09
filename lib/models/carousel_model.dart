import 'package:flutter/material.dart';

class CarouselCardModel {
  final String title;
  final double discountPercentage;
  final String image;

  const CarouselCardModel({
    required this.title,
    required this.discountPercentage,
    required this.image,
  });

  factory CarouselCardModel.fromJson(Map<String, dynamic> json) {
    return CarouselCardModel(
      title: json["title"],
      discountPercentage: json["discountPercentage"],
      image: json["thumbnail"],
    );
  }
}

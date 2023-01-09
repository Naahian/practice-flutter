import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practiceflutter/config/config.dart';
import 'shimmer_box.dart';

class CarouselShimmer extends StatelessWidget {
  const CarouselShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        ShimmerBox(
          width: 280,
          height: 0,
          baseColor: ShimmerColor.baseColor,
          highlightColor: ShimmerColor.highlightColor,
        ),
      ],
      options: CarouselOptions(
        aspectRatio: 16 / 7,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        autoPlay: false,
      ),
    );
  }
}

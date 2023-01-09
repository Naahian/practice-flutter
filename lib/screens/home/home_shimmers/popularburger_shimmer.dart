import 'package:practiceflutter/config/config.dart';
import 'package:shimmer/shimmer.dart';
import 'shimmer_box.dart';
import 'package:flutter/material.dart';

class PopularBurgerShimmer extends StatelessWidget {
  const PopularBurgerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: KDefaults.padding * .5),
      height: 600,
      child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 3.5 / 4.2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
            ShimmerBox(
              width: 180,
              height: 500,
              baseColor: ShimmerColor.baseColor,
              highlightColor: ShimmerColor.highlightColor,
            ),
            ShimmerBox(
              width: 200,
              height: 500,
              baseColor: ShimmerColor.baseColor,
              highlightColor: ShimmerColor.highlightColor,
            ),
            ShimmerBox(
              width: 200,
              height: 500,
              baseColor: ShimmerColor.baseColor,
              highlightColor: ShimmerColor.highlightColor,
            ),
            ShimmerBox(
              width: 200,
              height: 500,
              baseColor: ShimmerColor.baseColor,
              highlightColor: ShimmerColor.highlightColor,
            ),
          ]),
    );
  }
}

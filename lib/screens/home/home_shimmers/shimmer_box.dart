import "package:flutter/material.dart";
import 'package:shimmer/shimmer.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
    this.borderRadius = 20,
    this.child = const SizedBox(height: 0),
    this.shape = BoxShape.rectangle,
    required this.width,
    required this.height,
    required this.baseColor,
    required this.highlightColor,
  });
  final double width;
  final double height;
  final Color baseColor;
  final Color highlightColor;
  final double borderRadius;
  final BoxShape shape;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}

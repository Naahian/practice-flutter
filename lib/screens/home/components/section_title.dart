import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: KDefaults.padding,
        vertical: KDefaults.padding * 0.1,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Pallete.textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

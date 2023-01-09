import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.action,
    this.width = 100,
    this.height = 30,
    this.fontsize = 14.0,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final double fontsize;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Pallete.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Pallete.secondaryColor,
              fontWeight: FontWeight.bold,
              fontSize: fontsize,
            ),
          ),
        ),
      ),
    );
  }
}

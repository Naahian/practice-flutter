import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';
import 'package:practiceflutter/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Pallete.background,
      body: Body(),
      bottomNavigationBar: BottomNavBar(size: size),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: KDefaults.padding),
      height: size.height * .10,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Pallete.background, Pallete.secondaryColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          menu(),
          home(),
          cart(),
        ],
      ),
    );
  }

  GestureDetector cart() {
    return GestureDetector(
        child: Image.asset(
      "assets/icons/cart.png",
      scale: 1.2,
    ));
  }

  GestureDetector home() {
    return GestureDetector(
        child: Image.asset(
      "assets/icons/home.png",
      scale: 1.2,
    ));
  }

  GestureDetector menu() {
    return GestureDetector(
        child: Image.asset(
      "assets/icons/menu.png",
      scale: 1.2,
    ));
  }
}

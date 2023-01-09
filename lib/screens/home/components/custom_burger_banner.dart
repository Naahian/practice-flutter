import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';

class CustomBurgerBanner extends StatelessWidget {
  const CustomBurgerBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: KDefaults.padding, vertical: size.height * .02),
      color: Pallete.background,
      child: Container(
        width: size.width * .9,
        height: size.height * .18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Pallete.primaryColor, width: 1),
          gradient: LinearGradient(
            colors: [
              Pallete.primaryColor.withOpacity(.3),
              Pallete.primaryColor.withOpacity(.1),
              Pallete.secondaryColor.withOpacity(.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          title("Customized Burger"),
          const SizedBox(height: 3),
          description("not perfect enough what you see here? create your own."),
          const SizedBox(height: 12),
          const StartCreatingBtn(),
        ]),
      ),
    );
  }

  Text description(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Pallete.primaryColor,
        fontSize: 12,
      ),
    );
  }

  Text title(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Pallete.primaryColor,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class StartCreatingBtn extends StatelessWidget {
  const StartCreatingBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: KDefaults.padding * 0.85,
        vertical: KDefaults.padding * 0.3,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Pallete.primaryColor, Pallete.textColor.withOpacity(1.0)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "Start Creating >>",
        style: TextStyle(
          color: Pallete.secondaryColor.withOpacity(0.9),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

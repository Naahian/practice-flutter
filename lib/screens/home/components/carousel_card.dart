import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';
import 'package:practiceflutter/models/models.dart';
import 'components.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key? key,
    required this.cardData,
  }) : super(key: key);

  final CarouselCardModel cardData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      padding: const EdgeInsets.only(
        top: KDefaults.padding * .3,
        bottom: KDefaults.padding * .3,
        right: KDefaults.padding * .3,
      ),
      margin: const EdgeInsets.all(KDefaults.padding * .1),
      decoration: BoxDecoration(
        color: Pallete.background,
        border: Border.all(color: Pallete.textColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          //image
          Positioned(
            top: 0,
            bottom: 0,
            left: -50,
            right: 140,
            child: Image.asset("assets/images/burger.png"),
          ),

          Positioned(
            top: 25,
            bottom: 0,
            left: 110,
            right: 0,
            child: Column(
              //title, offer, button part
              children: [
                title("Burger ${cardData.title}".substring(0, 12)),
                const SizedBox(height: KDefaults.padding * .2),
                offerText(cardData.discountPercentage),
                const SizedBox(height: KDefaults.padding * .2),
                RoundedButton(
                  text: "SHOP NOW",
                  action: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Text title(String title) => Text(title, style: const TextStyle(fontSize: 18));

  Text offerText(double offer) {
    return Text(
      "$offer% OFFER",
      style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Pallete.primaryColor),
    );
  }
}

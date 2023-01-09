import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';
import 'package:practiceflutter/screens/home/components/components.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);
  final double borderRadius = 15;
  final String title;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(KDefaults.padding * .25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: Pallete.primaryColor, width: 2),
      ),
      child: Container(
          height: size.height * .32,
          width: size.width * .45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(
              colors: [
                Pallete.textColor.withOpacity(0.1),
                Pallete.textColor.withOpacity(0.8),
              ],
              stops: const [0.7, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: KDefaults.padding * 0.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              //all components of the widget goes below.
              children: [
                productImage("assets/images/burgeritem.jpg"),
                const SizedBox(height: 3),
                titleAndPrice(
                    title: "Burger $title".substring(0, 15), price: price),
                const SizedBox(height: 3),
                RoundedButton(text: "add to cart", width: 165, action: () {})
              ],
            ),
          )),
    );
  }

  Padding titleAndPrice({required String title, required int price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: KDefaults.padding * 0.3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //title text
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                color: Pallete.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          //price text
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "$price",
                  style: const TextStyle(
                    color: Pallete.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const Text(
                  " tk",
                  style: TextStyle(
                    color: Pallete.primaryColor,
                    fontSize: 12,
                    overflow: TextOverflow.clip,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container productImage(String image) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

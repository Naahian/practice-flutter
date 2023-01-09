import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';
import 'components/components.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //tobe removed, should be used individually

    return SingleChildScrollView(
      child: Column(children: [
        searchBarNCarousel(size),
        const CustomBurgerBanner(),
        const SectionTitle(title: "Popular Burgers"),
        const PopularProducts(), //todo
      ]),
    );
  }

//
  Stack searchBarNCarousel(Size size) {
    return Stack(
      children: [
        //linear gradient background
        Container(
          width: size.width,
          height: size.height * 0.33,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Pallete.secondaryColor, Pallete.background],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        //searchBarNCarousel
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SearchBar(), //textfield > searchButton
            const Carousel(), // OfferCard
          ],
        ),
      ],
    );
  }
}

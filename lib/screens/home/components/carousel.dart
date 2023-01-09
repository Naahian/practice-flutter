import 'package:flutter/material.dart';
import 'components.dart';
import 'package:practiceflutter/models/models.dart';
import 'package:practiceflutter/remote_service/get_services.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practiceflutter/screens/home/home_shimmers/home_shimmers.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<CarouselCardModel> carouselCardData = [];
  bool _isLoaded = false;

  void getCarouselData() async {
    var carouselData = await GetService.fetchCarouselData();
    setState(() {
      carouselCardData = carouselData;
      _isLoaded = !_isLoaded;
    });
  }

  @override
  void initState() {
    getCarouselData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoaded
        ? CarouselSlider(
            items: List.generate(
              carouselCardData.length,
              (index) => CarouselCard(cardData: carouselCardData[index]),
            ),
            options: CarouselOptions(
              aspectRatio: 16 / 7,
              viewportFraction: 0.7,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          )
        : const CarouselShimmer();
  }
}

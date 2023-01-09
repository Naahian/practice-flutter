import 'package:flutter/material.dart';
import 'package:practiceflutter/config/config.dart';
import 'package:practiceflutter/models/burger_item_model.dart';
import 'package:practiceflutter/screens/home/components/components.dart';
import 'package:practiceflutter/remote_service/remote_service.dart';
import 'package:practiceflutter/screens/home/home_shimmers/popularburger_shimmer.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  List<BurgerItemModel> popularBurgersData = [];
  bool _isLoaded = false;

  void getBurgerItemData() async {
    var fetchedPopularBurgerData = await GetService.fetchPopularBurgerData();
    print(fetchedPopularBurgerData);
    setState(() {
      popularBurgersData = fetchedPopularBurgerData;
      _isLoaded = !_isLoaded;
    });
  }

  @override
  void initState() {
    getBurgerItemData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return _isLoaded
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: KDefaults.padding * 0.5),
            height: 550,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 3 / 4.2),
              itemCount: popularBurgersData.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  title: popularBurgersData[index].title,
                  price: popularBurgersData[index].price,
                );
              },
            ),
          )
        : PopularBurgerShimmer();
  }
}

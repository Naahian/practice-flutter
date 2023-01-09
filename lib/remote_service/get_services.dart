import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:practiceflutter/models/burger_item_model.dart';
import 'package:practiceflutter/models/models.dart';
import 'package:http/http.dart' as http;

class GetService {
  //
  static Future<List<CarouselCardModel>> fetchCarouselData() async {
    List<CarouselCardModel> data = [];
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/products?limit=3"));

    if (response.statusCode == 200) {
      for (dynamic item in json.decode(response.body)["products"]) {
        data.add(CarouselCardModel.fromJson(item));
      }
      return data;
    } else {
      throw Exception("failed to load CarouselData");
    }
  }

  static Future<List<BurgerItemModel>> fetchPopularBurgerData() async {
    List<BurgerItemModel> data = [];
    http.Response response = await http
        .get(Uri.parse("https://dummyjson.com/products?skip=4&limit=4"));
    if (response.statusCode == 200) {
      for (dynamic item in json.decode(response.body)["products"]) {
        data.add(BurgerItemModel.fromJson(item));
      }
      return data;
    } else {
      throw Exception("failed to load PopularBurgerData");
    }
  }
}

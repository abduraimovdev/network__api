

import 'dart:convert';

import 'package:network__api/service/network_service.dart';

import 'package:network__api/src/models/dummy/carts/products_model.dart';


void mainPage() async{
  Network http = Network();
  String result = await http.get(url: "dummyjson.com", pages: "/users", id: 1);
  http.close();
  // List<MainCart> comment = result.toListCart;
  // print(comment);
  // MainCart carts = MainCart.fromJson(jsonDecode(result));
  // print(carts);
  Cart carts = Cart.fromJson(jsonDecode(result));

}


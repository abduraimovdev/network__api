import 'dart:convert';

import 'package:network__api/src/models/dummy/carts/products_model.dart';

class MainCart {
  List<Cart> carts;
  int total;
  int skip;
  int limit;

  MainCart(this.carts, this.total, this.skip, this.limit);

  factory MainCart.fromJson(Map<String, dynamic> json) {
    List list = json["carts"];
    List<Cart> carts = list.map<Cart>((map) => Cart.fromJson(map)).toList();
    int total = json["total"];
    int skip = json["skip"];
    int limit = json["limit"];

    return MainCart(carts, total, skip, limit);
  }

  @override
  String toString() {
    return 'MainCart{carts: $carts, total: $total, skip: $skip, limit: $limit}';
  }
}
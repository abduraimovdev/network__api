
import 'dart:convert';

import 'package:network__api/src/models/dummy/carts/cart_products_model.dart';

class Cart {
  int id;
  List<Product> products;
  int total;
  int discountedTotal;
  int userId;
  int totalProducts;
  int totalQuantity;

  Cart(this.id, this.products, this.total, this.discountedTotal, this.userId,
      this.totalProducts, this.totalQuantity);

  factory Cart.fromJson(Map<String, dynamic> json) {
    int id = json["id"];
    List list = json["products"];
    List<Product> products = list.map<Product>((map) => Product.fromJson(map)).toList();
    int total = json["total"];
    int discountedTotal = json["discountedTotal"];
    int userId = json["userId"];
    int totalProducts = json["totalProducts"];
    int totalQuantity = json["totalQuantity"];
    return Cart(id, products, total, discountedTotal, userId, totalProducts, totalQuantity);
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "products" : products,
    "total" : total,
    "discountedTotal" : discountedTotal,
    "userId" : userId,
    "totalProducts" : totalProducts,
    "totalQuantity" : totalQuantity,
  };

  @override
  String toString() {
    return 'Cart{id: $id, products: $products, total: $total, discountedTotal: $discountedTotal, userId: $userId, totalProducts: $totalProducts, totalQuantity: $totalQuantity}';
  }
}
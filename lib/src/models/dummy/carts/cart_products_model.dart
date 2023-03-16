class Product {
  int id;
  String title;
  int price;
  int quantity;
  int total;
  num discountPercentage;
  int discountedPrice;

  Product(this.id, this.title, this.price, this.quantity, this.total,
      this.discountPercentage, this.discountedPrice);

  factory Product.fromJson(Map<String, dynamic> json) {
    int id = json["id"];
    String title = json["title"];
    int price = json["price"];
    int quantity = json["quantity"];
    int total = json["total"];
    num discountPercentage = json["discountPercentage"];
    int discountedPrice = json["discountedPrice"];
    return Product(id, title, price, quantity, total, discountPercentage, discountedPrice);
  }

  Map<String, dynamic> toJson() {
    return {
    "id" : id,
    "title" : title,
    "price" : price,
    "quantity" : quantity,
    "total" : total,
    "discountPercentage" : discountPercentage,
    "discountedPrice" : discountedPrice,
    };
  }

  @override
  String toString() {
    return 'Product{id: $id, title: $title, price: $price, quantity: $quantity, total: $total, discountPercentage: $discountPercentage, discountedPrice: $discountedPrice}';
  }
}
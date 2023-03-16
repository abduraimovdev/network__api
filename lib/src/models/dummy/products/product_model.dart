class Images {
  List image;
  Images(this.image);

  factory Images.fromJson(List list) {
    List image = list.map((e) => e).toList();
    return Images(image);
  }

  @override
  String toString() {
    return 'Images{image: $image}';
  }
}

class Products {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  Images images;

  Products(
      this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images);

  factory Products.fromJson(Map<String, dynamic> json) {
    int id = json['id'];
    String title = json['title'];
    String description = json['description'];
    int price = json['price'];
    double discountPercentage = json['discountPercentage'];
    double rating = json['rating'];
    int stock = json['stock'];
    String brand = json['brand'];
    String category = json['category'];
    String thumbnail = json['thumbnail'];
    Images images = Images.fromJson(json['images']);
    return Products(id, title, description, price, discountPercentage, rating,
        stock, brand, category, thumbnail, images);
  }

  @override
  String toString() {
    return 'Products{id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images}';
  }
}

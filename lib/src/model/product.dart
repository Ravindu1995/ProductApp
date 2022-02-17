import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String? id;
  String? price;
  String? title;
  String? images;
  double? rating;
  String? description;

  Product(
      {this.id,
      this.price,
      this.title,
      this.images,
      this.rating,
      this.description});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    title = json['title'];
    images = json['images'];
    rating = json['rating'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['title'] = this.title;
    data['images'] = this.images;
    data['rating'] = this.rating;
    data['description'] = this.description;
    return data;
  }
}

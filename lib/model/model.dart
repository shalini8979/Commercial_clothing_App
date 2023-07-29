
class Product {  
  final String productname;
  final String brand;
  final String image;
  final String price;
  final String type; 
   Product({
    required this.productname,
    required this.brand,
    required this.image,
    required this.price,
    required this.type,
});

  static Product fromJson(Map<String, dynamic> json) 
  
  => Product(
      productname: json["productname"].toString(),
      brand: json["brand"].toString(),
      image: json["image"].toString(),
      price: json["price"].toString(),
      type: json["type"].toString());
      
Map<String, dynamic> toJson() => {
  "productname": productname,
  "brand": brand,
  "image": image,
  "price": price,
  "type": type,};

}












































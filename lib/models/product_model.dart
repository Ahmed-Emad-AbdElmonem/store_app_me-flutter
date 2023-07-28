class ProductModel {
  final int id;
  final String title;
  final double price;
  final String descreption;
  final String image;
  String ?category;
  final RatingModel rating;
  

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.descreption,
    required this.image,
    String ?category,
    required this.rating,
  });

  factory ProductModel.fromjson(Map<String, dynamic> jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"],
        descreption: jsonData["description"],
        image: jsonData["image"],
        category:jsonData["category"] ,
        rating: RatingModel.fromJson(jsonData["rating"]));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(Map jsonfromrate) {
    return RatingModel(
        rate: jsonfromrate["rate"], count: jsonfromrate["count"]);
  }
}

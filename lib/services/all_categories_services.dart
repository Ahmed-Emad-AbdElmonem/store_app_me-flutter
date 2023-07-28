import 'package:store_app_me/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().geet(url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}

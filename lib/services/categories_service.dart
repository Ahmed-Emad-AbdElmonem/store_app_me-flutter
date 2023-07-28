import 'package:store_app_me/helper/api.dart';
import 'package:store_app_me/models/product_model.dart';



class CategoriesService {


  Future< List<ProductModel>>  getCategoriesProducts ({required String categoryName})async
  {
      
    List<dynamic> data = await Api().geet(url: "https://fakestoreapi.com/products/category/$categoryName");

   
   
  
  List<ProductModel> productsList = [];
  
  
   
  for (int i = 0; i < data.length; i++) {
  
    
   productsList.add(ProductModel.fromjson(data[i])); 
  }
  
  return productsList;
}
  
}
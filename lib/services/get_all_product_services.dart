
import 'package:store_app_me/helper/api.dart';
import 'package:store_app_me/models/product_model.dart';

class AllProductsservices {
  Future<List<ProductModel>> getAllProducts() async {

 List<dynamic> data = await  Api().geet(url: "https://fakestoreapi.com/products");

  
  List<ProductModel> productsList = [];
  
    
  for (int i = 0; i < data.length; i++) {
  
  
  // معناها هاتلى اول ماب وهاتلى تانى ماب وهكذا data[i]
  //لان الداتا دى جواها كذا مابس
  // وطبعا هيخزنهم فى الماب بتاع دوت فروم جسون لانه بيطلب ماب
  // فانا كدا بعمل للماب اكسس عن طريق الداتا
  
  // فهم اخر
  // بيجيب الفاليو بتاع الكي من جوا الفرومجسون
  // فبيعدى على الداتا اللى هى الليست 
    
   productsList.add(ProductModel.fromjson(data[i])); // الشرح للسطر دا
  }
  
  return productsList;
}
  }

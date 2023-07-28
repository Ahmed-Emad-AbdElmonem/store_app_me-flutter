import 'package:flutter/material.dart';
import 'package:store_app_me/models/product_model.dart';
import 'package:store_app_me/services/update_product.dart';
import 'package:store_app_me/widgets/custom_button.dart';
import 'package:store_app_me/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({Key? key}) : super(key: key);

  static String id = "update product";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image, category;

  String? price;
  bool isLoading = false;
 
  @override
  Widget build(BuildContext context) {
    ProductModel? productModel = ModalRoute.of(context)!.settings.arguments as ProductModel ;
   
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "update product",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: "product Name",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: "descreption",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: "image",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: "price",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButon(
                  text: "update",
                  onTap: () {
                    isLoading=true;
                    print("sucsess");
                    setState(() {
                    
                    });
                    try {
                      updateProduct();
                    }  catch (e) {
                      print(e);
                    
                    }
                    isLoading=false;
                    setState(() {
                      
                    });
                  },
                ),
              ],
            ),
          ),
        ),




      ),



    );

   
  }
void updateProduct() {
     UpdateProductService().updateProduct(
      title: productName!,
      price: price!,
      desc: desc!,
      image: image!, 
      category: category  /*product!.Category*/,
    );
   
  }


}

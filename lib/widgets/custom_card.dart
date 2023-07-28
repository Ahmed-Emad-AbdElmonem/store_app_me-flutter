
import 'package:flutter/material.dart';
import 'package:store_app_me/models/product_model.dart';
import 'package:store_app_me/screens/update_product.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    required this.product,
    Key? key}) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id , arguments: product);
      },
      child: Stack(
            clipBehavior: Clip.none,
            children:[
               Container(
               decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: Offset(10, 10),
                  )
                ]
              ),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HandBag",style: TextStyle(color: Colors.grey,fontSize: 16),),
                      SizedBox(height: 3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r"$225",style: TextStyle(color: Colors.grey,fontSize: 16),),
                          Icon(Icons.favorite,color: Colors.red,),
          
                        ],
          
                      )
                    ],
                  ),
                ),
              ),
            ),
           Positioned(
            right:32,
            bottom: 80,
            child: Image.network("https://images-na.ssl-images-amazon.com/images/I/314o3Lfs98S.__AC_SX300_SY300_QL70_ML2_.jpg",height: 100,)),
          ]),
    );
  }
}
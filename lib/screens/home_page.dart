import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app_me/models/product_model.dart';
import 'package:store_app_me/services/get_all_product_services.dart';
import 'package:store_app_me/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "New Trend",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 65, left: 16, right: 16),
            child: FutureBuilder<List<ProductModel>>(
                future: AllProductsservices().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return GridView.builder(
                        itemCount: products.length,
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 100),
                        itemBuilder: (context, index) {
                          return CustomCard(product:products[index] ,);
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}

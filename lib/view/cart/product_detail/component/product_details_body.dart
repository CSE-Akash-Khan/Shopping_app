import 'package:flutter/material.dart';
import 'package:shopping_app/model/cart_model/product_model.dart';
import 'package:shopping_app/view/cart/product_detail/component/product_description.dart';
import 'package:shopping_app/view/cart/product_detail/component/product_details_image_title_price.dart';
import 'package:shopping_app/view/cart/product_detail/component/product_color_size.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';

import 'product_detail_color.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products; //come from product detail page

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.7,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      ProductColorSize(products: products),
                      ProductDescription(products: products)
                    ],
                  ),
                ),
                ProductDetailsImageTitlePrice(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


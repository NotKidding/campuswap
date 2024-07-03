import 'package:campuswap/features/shop/screen/product_details/widgets/product_meta_data.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          //product image slider
          TProductImageSlider(),

          //product details
          Padding(padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
          child: Column(
            children: [
              //rating and share
              TRatingAndShare(),
              //price, title, stack and rand
              TProductMetaData(),
              //attribute
              //checkout button
              //descreiption
              //reviews
            ],
          ),
          )
          ],
        ),
      ),
    );
  }
}

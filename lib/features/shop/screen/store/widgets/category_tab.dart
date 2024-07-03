import 'package:campuswap/common/widgets/brands/brand_show_case.dart';
import 'package:campuswap/common/widgets/layouts/grid_layout.dart';
import 'package:campuswap/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:campuswap/common/widgets/text/section_heading.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      
      children: [Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column( 
                children: [ 
                  //brand
                  TBrandShowcase(images: [TImages.productImage3,TImages.productImage4,TImages.productImage5,],),
                  TBrandShowcase(images: [TImages.productImage3,TImages.productImage4,TImages.productImage5,],),
                  
                  const SizedBox(height: TSizes.spaceBtwItem),
                  
                  //product
                  TSectionHeading(title: 'You might like', onPressed: () {} ),
                  const SizedBox(height: TSizes.spaceBtwItem),
                  
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical()),
                  const SizedBox(height: TSizes.spaceBtwSection)
                ],
              ),),]
    );
  }
}
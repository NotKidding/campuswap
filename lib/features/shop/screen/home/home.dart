import 'package:campuswap/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:campuswap/common/widgets/custom_shapes/container/search_container.dart';
import 'package:campuswap/common/widgets/layouts/grid_layout.dart';
import 'package:campuswap/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:campuswap/common/widgets/text/section_heading.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'widget/home_appbar.dart';
import 'widget/home_categories.dart';
import 'widget/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            //header
              const TPrimaryHeaderContainer(
              child: Column(
                children: [ 
                  //appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSection,),

                  //searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSection,),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [ 
                        //heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false,  textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItem,),

                        //categories
                        THomeCategories(),

 
                        
                      ],
                    ),
                    ),

                    SizedBox(height: TSizes.spaceBtwSection,),
                ],
              ),


            ),

            //body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [

                  //promo slider
            
                const TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],),
                const SizedBox(height: TSizes.spaceBtwSection,),

                //heading
                TSectionHeading(title: 'Popular Product', onPressed: (){}),
                const SizedBox(height: TSizes.spaceBtwItem,),

                //Popular Products
                TGridLayout(itemCount: 2, itemBuilder: (_, index) => const TProductCardVertical(),),
                ]
              ) 
            )
          ],
        ),
      ),
    );
  }
}

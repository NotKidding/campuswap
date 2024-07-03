import 'package:campuswap/common/widgets/appbar/appbar.dart';
import 'package:campuswap/common/widgets/appbar/tabbar.dart';
import 'package:campuswap/common/widgets/brands/brand_card.dart';
import 'package:campuswap/common/widgets/custom_shapes/container/search_container.dart';
import 'package:campuswap/common/widgets/layouts/grid_layout.dart';
import 'package:campuswap/common/widgets/text/section_heading.dart';
import 'package:campuswap/features/shop/screen/home/widget/home_appbar.dart';
import 'package:campuswap/features/shop/screen/store/widgets/category_tab.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text("Store", style: Theme.of(context).textTheme.headlineMedium,),
          actions: [ 
            TCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(
          
          headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding( 
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView( 
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //search bar
                    const SizedBox(height: TSizes.spaceBtwItem,),
                    const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: TSizes.spaceBtwSection),
      
                    //featured brand
                    TSectionHeading(title: 'Featured Brand', onPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItem / 1.5),
      
                    //brand grid
                    TGridLayout(
                      itemCount: 4, 
                      mainAxisExtent: 80, 
                      itemBuilder: (_, index){
                      
                      return const TBrandCard(showBorder: false);
                    })
                    
                
      
      
                  ],
                ),
              ),
      
              //tabs
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furniture'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Cloths'),),
                  Tab(child: Text('Cosmetics'),),
                ],
                ),
      
            )
          ];
        },

        //body
        body: const TabBarView( 
          children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),

            

        ],),
        ),
      ),
    );
  }
}


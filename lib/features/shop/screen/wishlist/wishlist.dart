import 'package:campuswap/common/widgets/appbar/appbar.dart';
import 'package:campuswap/common/widgets/icons/t_circular_icon.dart';
import 'package:campuswap/common/widgets/layouts/grid_layout.dart';
import 'package:campuswap/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:campuswap/features/shop/screen/home/home.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [ 
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column( 
            children: [ 
              TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:campuswap/common/widgets/containers/rounded_container.dart';
import 'package:campuswap/common/widgets/images/t_circular_image.dart';
import 'package:campuswap/common/widgets/text/product_price_text.dart';
import 'package:campuswap/common/widgets/text/product_title_text.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        // price and sale price
        Row(
          children: [ 
            //sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
              
                    ),
              const SizedBox(width: TSizes.spaceBtwItem,),
            //price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItem,),
            const TProductPriceText(price: '\$175', isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItem / 1.5,),

        //title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItem / 1.5,),

        //Stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItem,),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItem / 1.5),


        //brand
        Row(
          children: [ 
            TCircularImage(image: TImages.cosmeticsIcon, width: 32, height: 32, overlayColor: darkmode ? TColors.white : TColors.black,)
          ],
        )
      ],
    );
  }
}
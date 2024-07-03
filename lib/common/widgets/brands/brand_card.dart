import 'package:campuswap/common/widgets/containers/rounded_container.dart';
import 'package:campuswap/common/widgets/images/t_circular_image.dart';
import 'package:campuswap/common/widgets/text/t_brand_title_with_verified_icon.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/constants/enums.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
    });

    final bool showBorder;
    final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,

      //container design
      child: TRoundedContainer( 
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            //icon
            Flexible(
              child: TCircularImage( 
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItem /2),

            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                            
                  const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSize.large,),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              )
          ],
        ),
      )
    );
  }
}
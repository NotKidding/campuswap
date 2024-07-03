
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/constants/text_strings.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    //required this.dark,
  });

  //final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
          ),
          Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: TSizes.sm,),
          Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
    
      ],
    );
  }
}

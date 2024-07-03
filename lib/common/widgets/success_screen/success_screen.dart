import 'package:campuswap/common/styles/spacing_styles.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/constants/text_strings.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  
  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding( 
          padding: TSpacingStyle.paddingWithAppBarHeight *2,
          child: Column( 
            children: [ 
              //image
              Image(image: AssetImage(image), 
              width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwSection,),

              //title and subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItem,),
              Text(subtitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSection,),

              //buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue),),),


            ],
          ),
        ),
      ),
    );
  }
}
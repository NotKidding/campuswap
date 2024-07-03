import 'package:campuswap/common/widgets/success_screen/success_screen.dart';
import 'package:campuswap/features/authentication/screens/login/login.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/constants/text_strings.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [ 
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding for all sides
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [ 
              //image
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwSection,),

              //title and subtitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItem,),
              Text('support@campuswap.com',style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItem,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSection,),



              //buttons
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.staticSuccessIllustration,
                    title: TTexts.yourAccountCreatedTitle,
                    subtitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )),
                  child: const Text(TTexts.tContinue),),),
              const SizedBox(height: TSizes.spaceBtwItem,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){},child: const Text(TTexts.resendEmail),),),


            
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:campuswap/common/styles/spacing_styles.dart';
import 'package:campuswap/common/widgets/login_signup/social_buttons.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and subtitle

              const TLoginHeader(),

              //form
              const TLoginForm(),

              //divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSection,),

              //footer
              const TSocialButtons()


            ],
          ),

          
        ),
      ),
    );
  }
}

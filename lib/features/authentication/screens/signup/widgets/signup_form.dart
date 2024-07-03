
import 'package:campuswap/features/authentication/controllers/signup/signup_controller.dart';
import 'package:campuswap/features/authentication/screens/signup/verify_email.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:campuswap/utils/constants/text_strings.dart';
import 'package:campuswap/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_condition_checkbox.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
        
        //first and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) => TValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //username
        TextFormField(
          controller: controller.username,
          validator: (value) => TValidator.validateEmptyText('Username', value),
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //email
        TextFormField(
          controller: controller.email,
          validator: (value) => TValidator.validateEmail(value),
          decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
        //Phone number
        TextFormField(
          controller: controller.phoneNumber,
          validator: (value) => TValidator.validatePassword(value),
          decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
    
        //password
        Obx(
          () => TextFormField(
            controller: controller.password,
            validator: (value) => TValidator.validatePassword(value),
            obscureText: controller.hidePassword.value,
            decoration: InputDecoration(
              labelText: TTexts.password, 
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye)
                ),
              ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //terms and condition checkbox
        const TTermsAndConditionCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSection,),
    
        //signup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => controller.signup(), 
          child: const Text(TTexts.createAccount),
          ),
        )
    
    
    
        ],
    ),
    );
  }
}

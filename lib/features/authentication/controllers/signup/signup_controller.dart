import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/popups/full_screen_loader.dart';
import 'package:campuswap/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'network_manager.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  //variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  //signup
  Future<void> signup() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog('Processing...', TImages.docerAnimation);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      

      //form validation
      if (!signupFormKey.currentState!.validate()) return;
      

      //privacy policy check
      if (!privacyPolicy.value){
        TLoaders.warningSnackBar(title: 'Accept Privacy Policy',
        message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      //register user in firebase and save user data

      //save on firestore

      //success message

      //move to verify email screen
    } catch(e) {
      //show error
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally{
      //remove loader
      TFullScreenLoader.stopLoading();
    }
  }
}
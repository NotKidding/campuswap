import 'package:campuswap/common/widgets/loaders/animation_loader.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/animation.dart';

class TFullScreenLoader{
  static void openLoadingDialog(String text, String animation){
    showDialog(
      context: Get.overlayContext!, 
      barrierDismissible: false,
      builder: (_)=> PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column( 
            children: [ 
              const SizedBox(height: 250),//not confirmed yet
              TAnimationLoadingWidget(text: text, animation: animation),
            ],
          ),
        )
        )
      );
  }

  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}
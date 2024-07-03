import 'package:campuswap/features/authentication/screens/login/login.dart';
import 'package:campuswap/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //variables
  final deviceStorage = GetStorage();
  //final 

  //called from main.dart on app launch
  @override 
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }



  //function to show relevant screen
  screenRedirect() async {
    //local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen())  : Get.offAll(const OnBoardingScreen());
  }
}
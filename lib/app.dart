import 'package:campuswap/bindings/general_binding.dart';
import 'package:campuswap/features/authentication/screens/onboarding/onboarding.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      //loading while authentication
      home: const Scaffold(
         backgroundColor: TColors.primary,
         body: Center(
           child: CircularProgressIndicator(color: Colors.white,),
          
         ),
      )
    );
  }
}
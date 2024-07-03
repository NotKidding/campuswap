
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'data/repositories/authentication/authentication_repository.dart';
import 'firebase_options.dart';
//Certificate fingerprints:
  //       SHA1: 6A:16:12:74:F8:C3:AD:DA:89:57:20:71:3B:ED:BD:61:F3:3E:7E:A9
    //     SHA256: B0:85:D7:CF:D2:CE:73:03:C5:44:F7:D5:EA:74:DC:91:AE:41:4B:D4:C1:12:9A:05:03:CA:42:01:D7:EC:4D:51
//Signature algorithm name: SHA1withRSA (weak)
Future<void> main() async {

  //widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //get local storage
  await GetStorage.init();

  //await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  //init firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  //init auth
  
  runApp(const App());
}
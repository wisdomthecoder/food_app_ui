import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_ui/view/home.dart';
import 'package:get/route_manager.dart';

import 'view/splash.dart';

main(){
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // backgroundColor: Colors.white,
        primaryColor: Color.fromARGB(255, 255, 195, 64),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 224, 190, 77))
      )
    );
  }
}
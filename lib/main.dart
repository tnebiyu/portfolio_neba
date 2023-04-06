import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_web_portfolio/config/constants.dart';

import 'ui/home.dart';
import 'config/colors.dart';

void main() {



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nebiyu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: AppColors.lightNeon,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:EasySplashScreen(
        logo: Image.asset('$kSplashScreenImage',height: 300,width: 300,),
        durationInSeconds: 3,
        backgroundColor: kBackgroundColor,
        navigator: Home(),
        loadingText: Text('Loading',style: TextStyle(color: Colors.grey[300x]),),

    ),
    );
  }
}

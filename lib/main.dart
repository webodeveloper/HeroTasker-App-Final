import 'dart:async';

import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/auth/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()));
}
//Bring Herosss
// to do your to-dos
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
              //  Get.to(LoginPage()),
                Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PureWhiteColor,
      body: Center(
        child: Container(
          height:200 ,
          width: 240,
          child: Image.asset('assets/images/logo.png',
          fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}


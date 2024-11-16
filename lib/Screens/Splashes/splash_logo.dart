// ignore_for_file: prefer_const_constructors

import 'package:cyber_security_awareness_aibot/Screens/Splashes/splash_screen.dart';
import 'package:cyber_security_awareness_aibot/Screens/User/user_screen.dart';
import 'package:cyber_security_awareness_aibot/Screens/admin/admin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({super.key});

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), (() {
      checkUser();
      //  Get.to(SignInPage());
    }));
  }

  checkUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var userCheck = prefs.getBool("Login") ?? false;
    if (userCheck) {
      var userType = prefs.getString("userType");
      if (userType == "User") {
        Get.offAll(() => UserScreen(
              userUid: prefs.getString("userUid").toString(),
              userName: prefs.getString("userName").toString(),
              userEmail: prefs.getString("userEmail").toString(),
            ));
      } else if (userType == "Admin") {
        Get.offAll(() => AdminPanelScreen(
              userUid: prefs.getString("userUid").toString(),
              userName: prefs.getString("userName").toString(),
              userEmail: prefs.getString("userEmail").toString(),
            ));
      }
    } else {
      Get.offAll(SplashScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 16, 14),
        body: Center(
          child: Image.asset('assets/images/Logo2.png'),
        ),
      ),
    );
  }
}

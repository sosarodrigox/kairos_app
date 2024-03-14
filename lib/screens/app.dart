import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairos_app/common/theme.dart';
import 'package:kairos_app/screens/login.dart';
import 'package:kairos_app/screens/menu.dart';
import 'package:kairos_app/screens/welcome.dart';

class KairosApp extends StatelessWidget {
  final bool isLoggedIn;
  final bool isFirstLogin;

  // ignore: use_super_parameters
  const KairosApp({
    Key? key,
    required this.isLoggedIn,
    required this.isFirstLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KairosApp',
      theme: themeData,
      home: (isLoggedIn)
          ? ((isFirstLogin) ? WelcomeScreen() : MenuScreen())
          : LoginScreen(),
    );
  }
}

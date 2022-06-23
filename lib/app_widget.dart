import 'package:flutter/material.dart';
import 'package:payflow_app/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow_app/modules/home/home_page.dart';
import 'package:payflow_app/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pay Flow",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary
      ),
      initialRoute: "/login",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/barcode_scanner": (context) => const BarcodeScannerPage()
      }
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app/screen/confirm_count_screen.dart';
import 'package:food_app/screen/dlivery_method_screen.dart';
import 'package:food_app/screen/forget_pass_screen.dart';
import 'package:food_app/screen/login_screen.dart';
import 'package:food_app/screen/reset_Password.dart';
import 'package:food_app/screen/signup_screen.dart';
import 'package:food_app/screen/successfully_order_screen.dart';
import 'package:get/get.dart';

import 'drawer_screen.dart';
import 'screen/card_screen.dart';
import 'screen/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SignupScreen(),
        '/cardScreen': (context) => CardScreen(),
        '/confirmCount': (context) => ConfirmCountScreen(),
        '/drawerScreen': (context) => DrawerScreen(),
        '/deliveryMethodScreen': (context) => DeliveryMethodScreen(),
        '/paymentScreen': (context) => PaymentScreen(),
        '/successfullyOrderScreen': (context) => SuccessfullyOrderScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/forgetpass': (context) => ForgetPasswordScreen(),
        '/resetpassword': (context) => ResetPassword(),
     
      },
    );
  }
}

import 'package:food_app/core/routes/app_route.dart';
import 'package:food_app/drawer_screen.dart';
import 'package:food_app/screen/confirm_count_screen.dart';
import 'package:food_app/screen/dlivery_method_screen.dart';
import 'package:food_app/screen/forget_pass_screen.dart';
import 'package:food_app/screen/login_screen.dart';
import 'package:food_app/screen/payment_screen.dart';
import 'package:food_app/screen/reset_Password.dart';
import 'package:food_app/screen/signup_screen.dart';
import 'package:food_app/screen/successfully_order_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../screen/card_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoute.start,
    page: () =>  SignupScreen()),
  GetPage(name:AppRoute.confirmCount, page: () => const ConfirmCountScreen()),
  GetPage(name:AppRoute.cartScreen, page: () => const CardScreen()),
  GetPage(name:AppRoute.drawerScreen, page: () => const DrawerScreen()),
  GetPage(name:AppRoute.deliveryMethodScreen, page: () => const DeliveryMethodScreen()),
  GetPage(name:AppRoute.paymentScreen, page: () => const PaymentScreen()),
  GetPage(name:AppRoute.successfullyOrderScreen, page: () => const SuccessfullyOrderScreen()),
  GetPage(name:AppRoute.login, page: () => const LoginScreen()),
  GetPage(name:AppRoute.forgetPass, page: () => const ForgetPasswordScreen()),
  GetPage(name:AppRoute.signUp, page: () =>  SignupScreen()),
  GetPage(name:AppRoute.resetPassword, page: () => const ResetPassword()),
  
];
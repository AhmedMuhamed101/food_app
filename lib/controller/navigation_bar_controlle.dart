import 'package:flutter/material.dart';
import 'package:food_app/screen/addToCard_Screen.dart';
import 'package:food_app/screen/favorite_screen.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/screen/notification_screen.dart';
import 'package:food_app/screen/search_screen.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lottie/lottie.dart';

class NavigationBarControlle extends GetxController {
  int? selectIndex = 0;

  final items = <Widget>[
      Lottie.asset("images/home.json",width: 40,height: 40),              
      Lottie.asset("images/favourit.json",width: 50,height: 50),
      Lottie.asset("images/search.json",width: 50,height: 50),
      Lottie.asset("images/alarm.json",width: 50,height: 50),
      Lottie.asset("images/cart.json",width: 30,height: 30),
  ];

  final screen = [
   HomeScreen(),
   FavoriteScreen(),
   SearchScreen(),
   NotificationScreen(),
   AddToCardScreen()
   ];

  ontap(index) {
    selectIndex = index;
    update();
  }
}
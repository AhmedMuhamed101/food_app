import 'package:flutter/material.dart';
import 'package:food_app/controller/navigation_bar_controlle.dart';
import 'package:food_app/widget/curve_nav_bar_widget.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarControlle>(
      init: NavigationBarControlle(),
      builder: (controller) => Scaffold(
        extendBody: true,
        body: controller.screen[controller.selectIndex!],
        bottomNavigationBar: CurvedNavBarWidget(),
      ),
    );
  }
}

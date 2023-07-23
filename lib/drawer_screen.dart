import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_app/screen/menu_screen.dart';
import 'package:food_app/widget/navigation_bar_widget.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}
class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      mainScreen: HomePageScreen(),
      menuScreen: MenuScreen(),
      menuBackgroundColor:  Color(0xFFF7FBFF),
      showShadow: true,
      slideWidth: 230,
      angle: -9,
      mainScreenTapClose: true,
      mainScreenScale : 0.3,
      );
    }
  }
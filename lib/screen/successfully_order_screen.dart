import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SuccessfullyOrderScreen extends StatelessWidget {
  const SuccessfullyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF8FBFF),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:150.0),
                child: Lottie.asset("images/orderDone.json"),
              ),
              SizedBox(
            width: 296,
            child: Text(
              'Sit and relax while your orders is being worked on . It’ll take 5min before you get it',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3C3C3C),
                fontSize: 15,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.15,
              ),
            ),
          ),
              SizedBox(height: 150,),
              InkWell(
                              onTap:()=> Get.toNamed(AppRoute.drawerScreen),
                              child: Container(
                                  width: 335,
                                  height: 51,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.95, -0.32),
                                      end: Alignment(-0.95, 0.32),
                                      colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19C94210),
                                        blurRadius: 30,
                                        offset: Offset(0, 10),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Go back to home',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Sk-Modernist',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.14,
                                    ),
                                  ),
                                ),
                            )
      
            ],
          ),
        ),
      ),
    );
  }
}
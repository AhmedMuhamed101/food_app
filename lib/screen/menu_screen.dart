import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child:Container(  
            decoration: ShapeDecoration(
              color: Color(0xFFF8FBFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50.0 , bottom: 45),
                    child: InkWell(
                      onTap: () => Get.toNamed(AppRoute.drawerScreen),
                      child: Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                alignment: Alignment.center,
                                  child:  Text(
                                          "X",style: TextStyle(
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 25,
                                            fontFamily: 'Sk-Modernist',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.14,),), 
                              ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0 , bottom:20),
                    child: Container(
                              width: 80,
                              height: 80,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF8FBFF), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x0CAAAAAA),
                                    blurRadius: 20,
                                    offset: Offset(0, 20),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            alignment: Alignment.center,
                          child:Container(         
                          decoration: ShapeDecoration(
                            color: Color(0xFFF8FBFF), 
                            image: DecorationImage(
                              image: NetworkImage("https://thumbs.dreamstime.com/b/young-man-face-cartoon-vector-illustration-graphic-design-man-face-cartoon-144449592.jpg"),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: [
                                       BoxShadow(
                                            color: Color(0x33966E56),
                                            blurRadius: 15,
                                            offset: Offset(0, 8),
                                            spreadRadius: 0,
                                          )
                                    ],
                          ),
                                ),
                                 ),
                  ), 
                  Text(
                    'Ahmed Mohamed',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.48,
                    ),
                  ),
                  Text(
                  'fattah@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w400,
                  ),
                  ),              
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Lottie.asset("images/profile.json",width: 30,height: 30),
                       SizedBox(width: 5,),
                        Text(
                          'My profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Lottie.asset("images/payment.json",width: 30,height: 30),
                       SizedBox(width: 5,),
                        Text(
                          'Payment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                      Lottie.asset("images/setting.json",width: 30,height: 30),
                        SizedBox(width: 5,),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Lottie.asset("images/help.json",width: 30,height: 30),
                       SizedBox(width: 5,),
                        Text(
                          'Help',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       Lottie.asset("images/privacy.json",width: 30,height: 30),
                       SizedBox(width: 5,),
                        Text(
                          'Privacy policy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:100 ,),
                  Container(
                        width: 101,
                        height: 49,
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
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.14,
                          ),
                        ),
                      )  ,
                ],
              ),
            ),
),
      );
  }
}
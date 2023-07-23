import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:food_app/widget/buttom_widget.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
       
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Color(0xFFF8FBFF)),
      
                  child: Stack(
                    children:[
                        Positioned(
                        left: 96,
                        top: 191,
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF1B1B1B),
                          fontSize: 24,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.72,
                        ),
                      
                      ),
                    ),
                        Positioned(
                            left: 50,
                            top: 237,
                           child: SizedBox(
                                   width: MediaQuery.of(context).size.width/1.2,
                                   child: Text(
                                    'Enter your email address to request a password reset.',
                                     style: TextStyle(
                                      decoration: TextDecoration.none,
                                       color: Color(0xFF3C3C3C),
                                       fontSize: 14,
                                       fontFamily: 'Sk-Modernist',
                                       fontWeight: FontWeight.w400,
                                     ),
                                   ),
                                 ),
                         ),
                        ///TextFormField (Email Adresss)
                        Positioned(
                          top: 330 ,
                          left: 50,
                          child: Text(
                                            'Email Address',
                                            style: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 12,
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.w400,
                                            ),
                                          ),
                        ),              
                        Positioned(
                          top: 350,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                TextField(
                                     decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                    
                          hintText: "Enter email address",
                          hintStyle:TextStyle(
                                          color: Color(0xFFA9ABAE),
                                          fontSize: 14,
                                          fontFamily: 'Sk-Modernist',
                                          fontWeight: FontWeight.w400,
                                        ),
                         ),
                                ),
                            
                            ),
                        ),
                        ButtomSignWithGoogleWidget(ontap: () => Get.toNamed(AppRoute.paymentScreen),),
                        ButtomCreateAccountWidget(ontap: () => Get.toNamed(AppRoute.resetPassword),text: "Reset Password"),                      
                        ButtomLoginWidget(ontap: () => Get.toNamed(AppRoute.paymentScreen),),
                        
                         ] 
                  ),
                )
            ], 
        ),
      ),
    );     
  }
}
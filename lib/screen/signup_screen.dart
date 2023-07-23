import 'package:flutter/material.dart';
import 'package:food_app/controller/login_controller.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:food_app/widget/buttom_widget.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

  Get.put(AuthController());

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
                        left: 37,
                        top: 101,
                        child: Text(
                        'Create an account',
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
                            left: 37,
                            top: 147,
                           child: SizedBox(
                                   width: 287,
                                   child: Text(
                                         'Welcome friend, enter your details so lets get started in ordering food.',
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
                        ///TextFormField (Full name) 
                        Positioned(
                          top: 255,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller:controller.user_name,
                                       decoration: InputDecoration(
                                                          enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                   borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                    
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                    
                                                          ),
                                                          // fillColor: Colors.white,
                                                          hintText: "Full Name",
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
                        ),
                       ///TextFormField (Email Adresss)
                        Positioned(
                          top: 310,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                    keyboardType:TextInputType.emailAddress,
                                    controller:controller.email,
                                       decoration: InputDecoration(
                                                          enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                   borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                    
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                    
                                                          ),
                                                          // fillColor: Colors.white,
                                                          hintText: "Email",
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
                        ),
                       ///TextFormField (Password)
                        Positioned(
                          top: 365,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                 GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                                                 
                                      keyboardType: TextInputType.visiblePassword,
                                      controller: controller.password ,
                                        decoration: InputDecoration(
                                                            enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                      
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                      
                                                            ),
                                                      
                                                            hintText: "password",
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
                        ),
                      ///TextFormField (Comfirm Password)
                        Positioned(
                          top: 420,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                 GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                    keyboardType:TextInputType.visiblePassword ,
                                    controller:controller.user_comfirmpassword,
                                       decoration: InputDecoration(
                                                          enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                    
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                    
                                                          ),
                                                          fillColor: Colors.white,
                                                          hintText: "confirm password",
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
                        ),
                        ///TextFormField (AGE)
                        Positioned(
                          top: 475,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/18,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                 GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                    keyboardType:TextInputType.number ,
                                    controller:controller.user_age,
                                       decoration: InputDecoration(
                                                          enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                    
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                    
                                                          ),
                                                          // fillColor: Colors.white,
                                                          hintText: "Enter Age",
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
                        ),
                        ButtomSignWithGoogleWidget(ontap: () => Get.toNamed(AppRoute.paymentScreen),),
                        ButtomCreateAccountWidget(ontap: () => Get.toNamed(AppRoute.login),text: "Create an account"),                      
                        ButtomLoginWidget(ontap: () => Get.toNamed(AppRoute.paymentScreen),),
                        ] ),
                )  
          
            ], 
        ),
      ),
    );     
 }
}
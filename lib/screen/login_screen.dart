import 'package:flutter/material.dart';
import 'package:food_app/controller/login_controller.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:food_app/widget/buttom_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
      Get.put(AuthController());

    return Scaffold(
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
                        'Login to your account',
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
                                     'Good to see you again, enter your details below to continue ordering.',
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
                          top: 250 ,
                          left: 50,
                          child: Text(
                                            'Email Adress',
                                            style: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 12,
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.w400,
                                            ),
                                          ),
                        ),              
                        Positioned(
                          top: 280,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextFormField(
                                       controller: controller.email_login,
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
                                                          hintText: "Enter email",
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
                          top: 360 ,
                          left: 50,
                          child: Text(
                                            'Password',
                                            style: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 12,
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.w400,
                                            ),
                                          ),
                        ),              
                        Positioned(
                          top: 390,
                          left: 37,
                          child: Container(
                            height:MediaQuery.of(context).size.height/15,
                            width: MediaQuery.of(context).size.width/1.2,
                            color: Colors.white,
                            child:
                                GetBuilder<AuthController>(
                                  init: AuthController(),
                                  builder: (controller) => TextField(
                                        keyboardType: TextInputType.visiblePassword,
                                        controller: controller.password_login ,
                                        obscureText: controller.isShowPassword ,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                        icon: Icon( controller.iconDate),
                                        onPressed: () {
                                          controller.changeShowPassword();
                                 
                                        },),
                                                          enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                                                    
                                                          ),
                                                          focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(width: 1.50, color: Colors.black45),
                                                    
                                                          ),
                                                    
                                                          hintText: "Enter password",
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
                       ///TextFormField (Forget Password)
                        Positioned(
                          top: 448,
                          left: 45,
                           child: InkWell(
                            onTap: () => Get.toNamed(AppRoute.forgetPass),
                             child: Text(
                                        'Forget Password',
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Color(0xFFFE554A),                                         fontSize: 14,
                                          fontFamily: 'Sk-Modernist',
                                          fontWeight: FontWeight.w400,
                                          ),
                                        ),
                           ),
                         ),
                        ButtomSignWithGoogleWidget(ontap: () => Get.toNamed(AppRoute.drawerScreen),),
                        ButtomCreateAccountWidget(ontap: () => Get.toNamed(AppRoute.drawerScreen),text: "Create an account"),
                        ButtomLoginWidget(ontap: () => Get.toNamed(AppRoute.paymentScreen),),
                          ] ),
                )  
          
            ], 
        ),
      ),
    );     
  }
}
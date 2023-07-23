import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/widget/buttom_widget.dart';
import 'package:get/get.dart';

import '../core/routes/app_route.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
       
            width: MediaQuery.of(context).size.width,
            height:  MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Color(0xFFF8FBFF)),
             child: Stack(
              children: [
                  Positioned(
                        left: 96,
                        top: 191,
                      child: Text(
                        'Reset password',
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
                                    'A reset code has been sent to your email',
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
                  Positioned(
                            left: 140,
                            top: 320,
                           child: SizedBox(
                                   width: MediaQuery.of(context).size.width/1.2,
                                   child: Text(
                                    'Enter Code',
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
                  Positioned(
                          top: 350,
                          left: 35,
                          child: Container(
                            height:MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/7,
                            decoration: ShapeDecoration(
                             color: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),              
                            child:TextFormField(
                              onChanged: (value){
                                if (value.length==1) {
                                  FocusScope.of(context).nextFocus();
                                  
                                }
                              },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                    decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color:Colors.white),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                          
                          
                          
                         ),
                                ),
                            
                            ),
                        ),
                  Positioned(
                          top: 350,
                          left: 100,
                          child: Container(
                            height:MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/7,
                            decoration: ShapeDecoration(
                             color: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),              
                            child: TextFormField(
                              onChanged: (value){
                                if (value.length==1) {
                                  FocusScope.of(context).nextFocus();
                                  
                                }
                              },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                    decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color:Colors.white),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                          
                          
                          
                         ),
                                ),
                            
                            ),
                        ),
                  Positioned(
                          top: 350,
                          left: 165,
                          child: Container(
                            height:MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/7,
                            decoration: ShapeDecoration(
                             color: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),              
                            child:TextFormField(
                              onChanged: (value){
                                if (value.length==1) {
                                  FocusScope.of(context).nextFocus();
                                  
                                }
                              },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                    decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color:Colors.white),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                          
                          
                          
                         ),
                                ),
                            
                            ),
                        ),
                  Positioned(
                          top: 350,
                          left: 230,
                          child: Container(
                            height:MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/7,
                            decoration: ShapeDecoration(
                             color: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),              
                            child:TextFormField(
                              onChanged: (value){
                                if (value.length==1) {
                                  FocusScope.of(context).nextFocus();
                                  
                                }
                              },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                    decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color:Colors.white),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                          
                          
                          
                         ),
                                ),
                            
                            ),
                        ),
                  Positioned(
                          top: 350,
                          left: 295,
                          child: Container(
                            height:MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/7,
                            decoration: ShapeDecoration(
                             color: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),              
                            child:TextFormField(
                              onChanged: (value){
                                if (value.length==1) {
                                  FocusScope.of(context).nextFocus();
                                  
                                }
                              },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                    decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color:Colors.white),
                    
                          ),
                          focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1.50, color: Colors.black45),
                    
                          ),
                          
                          
                          
                         ),
                                ),
                            
                            ),
                        ),
                  ButtomCreateAccountWidget(ontap: () => Get.toNamed(AppRoute.login),text: "Reset Password"),                      
                
              ],
             ),
             ),
          ]
        )
      )
    );
  }
}
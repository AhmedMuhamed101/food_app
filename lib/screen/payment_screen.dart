import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Color(0xFFF8FBFF),
          child: Column(
            children: [
                Padding(
            padding: const EdgeInsets.only(top:50.0 , right: 280 , bottom: 40),
            child: InkWell(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back_ios_new , size: 30),
            ),
          ),
                SizedBox(
                  width: 320,
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      color: Color(0xFF3C3C3C),
                      fontSize: 24,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.72,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:50.0 , right: 240),
                  child: Text(
                    'Card details',
                    style: TextStyle(
                      color: Color(0xFF3C3C3C),
                      fontSize: 12,
                      fontFamily: 'Sk-Modernist',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0 ),
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      
                       decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                  
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Colors.black45),
                  
                        ),
                  
                        hintText: "Enter Card Details",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          'Exp date',
                          style: TextStyle(
                            color: Color(0xFF3C3C3C),
                            fontSize: 12,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                  padding: const EdgeInsets.all(10.0 ),
                  child: Container(
                    height: 50,
                    width: 157,
                    child: TextFormField(
                      
                       decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                  
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Colors.black45),
                  
                        ),
                  
                        hintText:'DD/MM',
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
              
                    ],),
                     Column(children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          'CVV',
                          style: TextStyle(
                            color: Color(0xFF3C3C3C),
                            fontSize: 12,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                  padding: const EdgeInsets.all(10.0 ),
                  child: Container(
                    height: 50,
                    width: 157,
                    child: TextFormField(
                      
                       decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Color(0xFFDEE2E5)),
                  
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1.50, color: Colors.black45),
                  
                        ),
                  
                        hintText:'Enter CVV',
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
              
                    ],),
                 
                  ],
                 ),    
                SizedBox(height: 300,),
                InkWell(
                  onTap:()=> Get.toNamed(AppRoute.successfullyOrderScreen),
                  child: Container(
                      width: 335,
                      height: 51,
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
                                          color: Color(0x0C021F2C),
                                          blurRadius: 40,
                                          offset: Offset(0, 20),
                                          spreadRadius: 0,
                                        )
                                      ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                      'Process to payment',
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
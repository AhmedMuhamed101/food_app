import 'package:flutter/material.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class DeliveryMethodScreen extends StatelessWidget {
  const DeliveryMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        backgroundColor: Color(0xFFF8FBFF),        
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Get.back(),
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
                                child: Icon(Icons.arrow_back_ios_new),
                              ),
          ),
        ),
        title:Center(
            child: Column(
              
              children: [Text("Delivery to ",style: TextStyle(color: Color(0xFF1B1B1B),
                        fontSize: 14,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        letterSpacing: -0.14,),), 
              Text(
                      'Ahmed Mohamed , Qena',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFE554A),
                        fontSize: 15,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.15,
                      ),
                    ),
              ],
            ),
          ),
        actions: [ Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage("https://thumbs.dreamstime.com/b/young-man-face-cartoon-vector-illustration-graphic-design-man-face-cartoon-144449592.jpg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33966E56),
                      blurRadius: 15,
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                    )
                  ],
                ),
            ),
          )
        ],
      
      ) ,
        body: Container(
          color: Color(0xFFF8FBFF),
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0  , right: 135 , bottom: 20),
                  child: Text(
                            'Delivery method',
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
                  padding: const EdgeInsets.only(left:30.0 , bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 211,
                        child: Text(
                          'Elshon Street,in front of Vocational Training,Golden Bed ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 58,
                        child: Text(
                          'Change',
                          style: TextStyle(
                            color: Color(0xFFFE554A),
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0,bottom:50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 211,
                        child: Text(
                          '+20 1008397248',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 58,
                        child: Text(
                          'Change',
                          style: TextStyle(
                            color: Color(0xFFFE554A),
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox( 
                  width: 295,
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
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                         child: Lottie.asset("images/add.json"),              
                      ),
                      SizedBox(width: 10,),
                      Container(
                          width: 60,
                          height: 58,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.25,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0xFFF9871F),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    alignment: Alignment.bottomRight,
                                    child: Lottie.asset("images/mastercard.json",width: 30,height: 30,),
                                  ),
                        ),
                      SizedBox(width: 30,),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                          child: Image.asset("images/paypal.jpg")
                        ),
                      SizedBox(width: 30,),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Image.asset("images/stripe.jpg")
                        ),
      
                    ],
                  ),
                ),
                Container(
                  width: 330,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                          width: 15,
                          height: 15,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(
                              side: BorderSide(width: 1.20, color: Color(0xFF1B1B1B)),
                            ),
                          ),
                           
                        ), 
                        
                      SizedBox(width: 20,),
                      Container(
                          width: 148,
                          alignment: Alignment.centerLeft,
                          child: Text(
                                'Pay on arrival',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.15,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0 , right: 140 , bottom: 50),
                  child: Text(
                  'Pay with cash/POS upon arrival ',
                  style: TextStyle(
                    color: Color(0xFFFE554A),
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                              ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 211,
                      child: Text(
                        'Delivery Fee',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '\$20',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.48,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 211,
                      child: Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '\$520',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF3C3C3C),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.48,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.15,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 211,
                      child: Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 60,
                      child:Text(
                            '\$540',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontSize: 24,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.72,
                            ),
                          ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap:()=> Get.toNamed(AppRoute.paymentScreen),
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
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app/controller/counter_controller.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';

class ConfirmCountScreen extends GetView<CounterController> {
  const ConfirmCountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFF8FBFF),        
        leading:InkWell(
          onTap: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
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
      body: SingleChildScrollView(
        child: Container(
                  color: Color(0xFFF8FBFF),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 258,
                                height: 224,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
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
                                child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                          width: 200,
                                          height: 150,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://th.bing.com/th/id/R.f30480092f24bdd707811baef7e3c529?rik=3Jpk72oXn42vLw&pid=ImgRaw&r=0"),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                                ),
                                        ),
                                        
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.95, -0.32),
                                    end: Alignment(-0.95, 0.32),
                                    colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () => controller.subtract(),
                                      child: Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontFamily: 'Sk-Modernist',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () =>  Text(
                                            '${controller.value}',
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
                                    InkWell(
                                      onTap: () => controller.add(),
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontFamily: 'Sk-Modernist',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Text(
                                'Big boys Cheese burger',
                                textAlign: TextAlign.center,
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
                              padding: const EdgeInsets.only(bottom:30.0),
                              child: Container(
                                 color: Color(0xFFF8FBFF),
                                 width: 220,
                                 height: 30, 
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Text(
                                      '⭐️',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.12,
                                      ),
                                    ),
                                   Text(
                                      '4+',
                                      style: TextStyle(
                                        color: Color(0xFF3C3C3C),
                                        fontSize: 11,
                                        fontFamily: 'Sk-Modernist',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                   SizedBox(width:30,),
                                   Text(
                                      '🔥',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.12,
                                      ),
                                    ),
                                   Text(
                                      '300cal',
                                      style: TextStyle(
                                        color: Color(0xFF3C3C3C),
                                        fontSize: 11,
                                        fontFamily: 'Sk-Modernist',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ), 
                                   SizedBox(width:30,),
                                   Text(
                                    '⏰',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.12,
                                    ),
                                  ), 
                                   Text(
                                      '5-10min',
                                      style: TextStyle(
                                        color: Color(0xFF3C3C3C),
                                        fontSize: 11,
                                        fontFamily: 'Sk-Modernist',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                ],), 
                                ),
                            ),
                            Container(
                                width: 319,
                                height: 84,
                                child: Text(
                                  'Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped ',
                                  style: TextStyle(
                                    color: Color(0xFF3C3C3C),
                                    fontSize: 14,
                                    fontFamily: 'Sk-Modernist',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                             ),  
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Toppings for you                                               \t\t\t\t\t\t\t\t\t\t\t',
                                style: TextStyle(
                                  color: Color(0xFF3C3C3C),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.48,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  
                                  children: [
                                    Container(
                                      width: 130,
                                      height: 50,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 0.50,color: Color(0xFFF0C9C1)),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Text(
                                          '   🍪 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.12,
                                          ),
                                        ),
                                          Text(
                                                    'Regular Bun',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: 'DM Sans',
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -0.12,
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      width: 130,
                                      height: 50,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Text(
                                          '   🧀 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.12,
                                          ),
                                        ),
                                          Text(
                                                    ' Cheese ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: 'DM Sans',
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -0.12,
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Container(
                                      width: 130,
                                      height: 50,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Text(
                                          '   🧆 ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.12,
                                          ),
                                        ),
                                          Text(
                                                    'Meat sau',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: 'DM Sans',
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -0.12,
                                                    ),
                                                  ),
                                        ],
                                      ),
                                    ),
                                                    
                                ],),
                              ),
                            ),
                            InkWell(
                              onTap:()=> Get.toNamed(AppRoute.cartScreen),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom:30.0),
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
                                      'Add to cart',
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
                              ),
                            )
      
                          ],
                        ),
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
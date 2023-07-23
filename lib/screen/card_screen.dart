import 'package:flutter/material.dart';
import 'package:food_app/controller/counter_controller.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';

class CardScreen extends GetView<CounterController> {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController);
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
        child:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  width: 300,
                  child: Text(
                    'Your cart',
                    style: TextStyle(
                      color: Color(0xFF3C3C3C),
                      fontSize: 24,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.72,
                    ),
                  ),
                ),
              ),
              Container(
            width: 335,
            height: 112,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
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
            child: Row(
              children: [
                SizedBox(width: 10 ,),
                Container(
                        width: 78.32,
                        height: 68,
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
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Macdonalds ',
                      style: TextStyle(
                        color: Color(0xFF3C3C3C),
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.48,
                      ),
                    ),
                    Text(
                      'Classic cheesburger',
                      style: TextStyle(
                        color: Color(0xFF3C3C3C),
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.12,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '\$23.99                   ',
                      style: TextStyle(
                        color: Color(0xFFFE554A),
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.95, -0.32),
                      end: Alignment(-0.95, 0.32),
                      colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                    ),
                    shape: OvalBorder(),
                  ),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () =>controller.subtract() ,
                    child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.48,
                              ),
                            ),
                  ),
                ),
                SizedBox(width: 10,),
              Obx(() => Text(
                    '${controller.value}',
                    style: TextStyle(
                      color: Color(0xFF3C3C3C),
                      fontSize: 16,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.48,
                    ),
                  ),
              ),
                SizedBox(width: 10,),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.95, -0.32),
                      end: Alignment(-0.95, 0.32),
                      colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                    ),
                    shape: OvalBorder(),
                  ),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () => controller.add(),
                    child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.48,
                              ),
                            ),
                  ),
                ),
              
              ],
            ),
          ),
              SizedBox(height: 20,),          
              Container(
                    width: 335,
                    height: 112,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
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
                    child: Row(
                      children: [
                        SizedBox(width: 10 ,),
                        Container(
                                width: 78.32,
                                height: 68,
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
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'The Macdonalds ',
                              style: TextStyle(
                                color: Color(0xFF3C3C3C),
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.48,
                              ),
                            ),
                            Text(
                              'Classic cheesburger',
                              style: TextStyle(
                                color: Color(0xFF3C3C3C),
                                fontSize: 12,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.12,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              '\$23.99                   ',
                              style: TextStyle(
                                color: Color(0xFFFE554A),
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.48,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, -0.32),
                              end: Alignment(-0.95, 0.32),
                              colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                            ),
                            shape: OvalBorder(),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.48,
                                    ),
                                  ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.48,
                            ),
                          ),
                        SizedBox(width: 10,),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, -0.32),
                              end: Alignment(-0.95, 0.32),
                              colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                            ),
                            shape: OvalBorder(),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.48,
                                    ),
                                  ),
                        ),
                      
                      ],
                    ),
                  ),
              SizedBox(height: 20,),          
              Container(
                  width: 335,
                  height: 112,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
                  child: Row(
                    children: [
                      SizedBox(width: 10 ,),
                      Container(
                              width: 78.32,
                              height: 68,
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
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'The Macdonalds ',
                            style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.48,
                            ),
                          ),
                          Text(
                            'Classic cheesburger',
                            style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontSize: 12,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.12,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '\$23.99                   ',
                            style: TextStyle(
                              color: Color(0xFFFE554A),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.95, -0.32),
                            end: Alignment(-0.95, 0.32),
                            colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                          ),
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                                  '-',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.48,
                                  ),
                                ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                          '1',
                          style: TextStyle(
                            color: Color(0xFF3C3C3C),
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      SizedBox(width: 10,),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.95, -0.32),
                            end: Alignment(-0.95, 0.32),
                            colors: [Color(0xFFF9871F), Color(0xFFFF774C)],
                          ),
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.48,
                                  ),
                                ),
                      ),
                    
              ],
            ),
          ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xFF3C3C3C),
                      fontSize: 14,
                      fontFamily: 'Sk-Modernist',
                      fontWeight: FontWeight.w400,
                    ),
                        ),
                    SizedBox(
                      width: 58,
                      child: Text(
                        '\$345',
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
              ),
              InkWell(
                onTap:()=> Get.toNamed(AppRoute.deliveryMethodScreen),
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
        ) ,
      ),
    );
  }
}
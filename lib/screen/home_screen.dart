import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_app/core/routes/app_route.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        backgroundColor:  Color(0xFFF8FBFF),
        elevation: 0,

        title: Center(
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
      actions: [
        Padding(
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
      leading: Padding(
            padding: const EdgeInsets.only(left:8.0),
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
              child: IconButton(onPressed: ()
              {
                if (ZoomDrawer.of(context)!.isOpen() ) {
                  ZoomDrawer.of(context)!.close();
                }else {
                  ZoomDrawer.of(context)!.open();
                }
              },
               icon: Icon(Icons.menu,size: 30,)),
            ),
          ),
  
      ), 
      body: Container(
        color: Color(0xFFF8FBFF),
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: SizedBox(
                     width: 287,
                     child: Text(
              'Enjoy Delicious food',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row( 
              children: [
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color: Color(0x19F0CCC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🍕',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Pizza',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
              SizedBox(width: 20,),
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color:Color(0x33A8E78A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🍔',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Burger',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
              SizedBox(width: 20,),
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color: Color(0x19F0CCC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🌭',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Sausage',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
              SizedBox(width: 20,),              
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color: Color(0x19F0CCC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🌮',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Samosa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
              SizedBox(width: 20,),                
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color: Color(0x19F0CCC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🍩',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Sweet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
              SizedBox(width: 20,),                
                Container(
                width: 81.75,
                height: 109,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF0C9C1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                width: 64.96,
                height: 86.98,
                decoration: ShapeDecoration(
                  color: Color(0x19F0CCC1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                width: 26.42,
                height: 26.42,
                child: Text(
                  '🍹',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.72,
                  ),
                ),
                  ),
                    SizedBox(
                width: 36.79,
                height: 24.52,
                child: Text(
                  'Drinks',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.12,
                  ),
                ),
                  ),
                ],
                ),
                  ),
                  ),
                   
              ],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                      'Popular restaurants',
                      style: TextStyle(
              color: Color(0xFF3C3C3C),
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
              letterSpacing: -0.48,
                      ),
                    ),
            ), 
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
            'View all(29)',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFFE554A),
              fontSize: 14,
              fontFamily: 'Sk-Modernist',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.14,
            ),
                  ),
          ),  
         ],),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
             children: [
            SizedBox(width: 20,),
               InkWell(
              onTap:() {
               Get.toNamed(AppRoute.confirmCount);
              },
                 child: Container(
                          width: 250,
                          height: 300,
                          decoration: ShapeDecoration(
                            color: Colors.white,
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
                  child:Column(
                    children: [
                      Padding(
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
                        Text(
                    'Big cheese burger',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                    color: Color(0xFF3C3C3C),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.48,
                    
                  ),
                   ), 
                       SizedBox(height: 5,),
                        SizedBox(
                  width: 185,
                  child: Text(
                    'No 10 opp lekki phase 1 bridge in sangotedo estate',
                    style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.12,
                    ),
                  ),
                   ),
                           SizedBox(height: 10,),
                      
                             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         SizedBox(width: 20,),
                         Text(
                           '⭐️',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 24,
                             fontFamily: 'DM Sans',
                             fontWeight: FontWeight.w700,
                             letterSpacing: -0.72,
                           ),
                         ),
                          Text(
                            '4+',
                            textAlign: TextAlign.center,
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
                 Padding(
                   padding: const EdgeInsets.only(right: 10),
                   child: Text(
                             '❤️',
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 24,
                               fontFamily: 'DM Sans',
                               fontWeight: FontWeight.w700,
                               letterSpacing: -0.72,
                             ),
                           ),
                 ),
                             
                  ],
                             )
                   
                    ],
                  ),
                        ),
               ),
            SizedBox(width: 40,),
              Container(
                        width: 250,
                        height: 300,
                        decoration: ShapeDecoration(
                          color: Colors.white,
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
                child:Column(
                  children: [
                    Padding(
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
                      Text(
                  'Medium cheese burger',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.48,
                  
                ),
                 ), 
                     SizedBox(height: 5,),
                      SizedBox(
                width: 185,
                child: Text(
                  'No 10 opp lekki phase 1 bridge in sangotedo estate',
                  style: TextStyle(
                color: Color(0xFF3C3C3C),
                fontSize: 12,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.12,
                  ),
                ),
                 ),
              
                  ],
                ),
                      ),
              SizedBox(width: 40,),
              Container(
                        width: 250,
                        height: 300,
                        decoration: ShapeDecoration(
                          color: Colors.white,
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
                child:Column(
                  children: [
                    Padding(
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
                      Text(
                  'Small cheese burger',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.48,
                  
                ),
                 ), 
                     SizedBox(height: 5,),
                      SizedBox(
                width: 185,
                child: Text(
                  'No 10 opp lekki phase 1 bridge in sangotedo estate',
                  style: TextStyle(
                color: Color(0xFF3C3C3C),
                fontSize: 12,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.12,
                  ),
                ),
                 ),
              
                  ],
                ),
                      ),
            
             ],
           ),
         ),
        ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constant/link_images.dart';

class ButtomSignWithGoogleWidget extends StatelessWidget {

  const ButtomSignWithGoogleWidget({super.key, this.ontap});

 final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Positioned(
                          top: 570,
                          left: 70,
                          child: InkWell(
                            onTap:ontap,
                            child: Container(
                              width: MediaQuery.of(context).size.width/1.6,
                              height: MediaQuery.of(context).size.height/15,
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
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                   Container(
                                    width: MediaQuery.of(context).size.width/9,
                                    // height: MediaQuery.of(context).size.height/20,
                                    child: SvgPicture.asset(LinkImages.googleIconImage)),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width/2.5,
                                      // height: MediaQuery.of(context).size.height/35,
                                   
                                      child: Text(
                                      'Sign-in with Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Sk-Modernist',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                        letterSpacing: -0.14,
                                      ),
                                                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                  

      ],
    ); 
    }
}

class ButtomCreateAccountWidget extends StatelessWidget {
  const ButtomCreateAccountWidget({super.key, this.ontap, required this.text});
  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Positioned(
                          top: 635,
                          left: 25,
                          child: InkWell(
                                        onTap:ontap,
                                        child: Container(
                                            width: MediaQuery.of(context).size.width/1.12,
                                            height: MediaQuery.of(context).size.height/15,
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
                                            text,
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
                        ),
                  

      ],
    ); 
    }
}

class ButtomLoginWidget extends StatelessWidget {
  const ButtomLoginWidget({super.key, this.ontap});

 final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          Positioned(
                          top: 700,
                          left: 25,
                          child: InkWell(
                            onTap:ontap,
                            child: Container(
                              width: MediaQuery.of(context).size.width/1.12,
                              height: MediaQuery.of(context).size.height/15,
                              decoration: ShapeDecoration(
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
                                'Login to my account',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFFE554A),
                                  fontSize: 16,
                                  fontFamily: 'Sk-Modernist',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.16,
                                ),
                              ),
                            ),
                          ),
                        )
                  

      ],
    ); 
    }
}
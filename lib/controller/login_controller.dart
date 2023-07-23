import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

 IconData iconDate = Icons.visibility_off_outlined;
 GlobalKey<FormState> formState = GlobalKey();
 bool isShowPassword = true;
 late TextEditingController email;
 late TextEditingController password;
 late TextEditingController email_login;
 late TextEditingController password_login;
 
  TextEditingController? user_name  ;
  TextEditingController? user_comfirmpassword;
  TextEditingController? user_age ;
 

changeShowPassword(){
  if (isShowPassword == true) {
    isShowPassword = false;
    iconDate = Icons.remove_red_eye_outlined;
  } else {
    isShowPassword = true;
    iconDate = Icons.visibility_off_outlined;
  }
  update();
}

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    email_login = TextEditingController();
    password_login = TextEditingController();
    
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    email_login.dispose();
    password_login.dispose();
    
    super.dispose();
  }

}
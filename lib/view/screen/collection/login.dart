// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onlytest/view/screen/collection/Sinup.dart';
import 'package:onlytest/view/utils/app_color.dart';
import 'package:onlytest/view/utils/app_icon.dart';
import 'package:onlytest/view/utils/app_string.dart';
import 'package:onlytest/view/utils/widget/Inputfild.dart';
import 'package:onlytest/view/utils/widget/buttons.dart';

import '../../utils/widget/iconcontainer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Email_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.BodyColor),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcon.appIcon2),
                  ],
                ),
                SizedBox(height: Get.height / 15),
                Text(Login_Scrren_text.Sinin, style: TextStyle(fontSize: Get.width / 14, fontWeight: FontWeight.bold)),
                SizedBox(height: Get.height / 20),
                Inputfild(name: Login_Scrren_text.Email, hint: Login_Scrren_text.Email_hint),
                Inputfild(name: Login_Scrren_text.Password, hint: Login_Scrren_text.Password_hint),
                Button(name: Button_Name.Login),
                SizedBox(height: Get.height / 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Login_Scrren_text.or,style: TextStyle(fontSize: Get.width/26,color: AppColor.Textfildhintcolor)),
                  ],
                ),
                SizedBox(height: Get.height/50),
                Row(
                  children: [
                    Iconcontainer(assetName: AppIcon.googole),
                    Iconcontainer(assetName: AppIcon.fecebook),
                    Iconcontainer(assetName: AppIcon.twitter),
                  ],
                ),
                SizedBox(height: Get.height/50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Login_Scrren_text.Dont,style: TextStyle(color: AppColor.Textfildcolor,fontSize: Get.width/25)),
                    SizedBox(width: Get.width/60),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=> Sinup());
                      },
                        child: Text(Button_Name.Sinup,style: TextStyle(color: AppColor.Buttoncolor,fontSize: Get.width/25)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlytest/view/screen/collection/login.dart';
import 'package:onlytest/view/utils/app_color.dart';
import 'package:onlytest/view/utils/app_icon.dart';
import 'package:onlytest/view/utils/app_string.dart';

import '../../utils/app_image.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),() {
      Get.to(()=> Login(),transition: Transition.fadeIn,duration: Duration(seconds: 2));
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImage.BackgroundImage),fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: Get.height/3),
            Column(
              children: [
                SvgPicture.asset(AppIcon.appIcon),
                SizedBox(height: Get.height/50),
                SvgPicture.asset(AppIcon.humanity),
              ],
            ),
            SizedBox(height: Get.height/5),
            SvgPicture.asset(AppIcon.Welcome),
            SizedBox(height: Get.height/30),
          ],
        ),
      ),
    );
  }
}

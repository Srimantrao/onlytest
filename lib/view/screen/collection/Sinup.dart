
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onlytest/view/utils/app_color.dart';
import 'package:onlytest/view/utils/app_icon.dart';

class Sinup extends StatelessWidget {
  const Sinup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SvgPicture.asset(AppIcon.left),
          actions: [SvgPicture.asset(AppIcon.appIcon2,width: 40,height: 40),SizedBox(width: Get.width/60)],
          automaticallyImplyLeading: false,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: AppColor.BodyColor),
      ),
    );
  }
}

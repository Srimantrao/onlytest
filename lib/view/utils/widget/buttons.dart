import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:onlytest/view/utils/app_color.dart';
import 'package:onlytest/view/utils/app_string.dart';

class Button extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const Button({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: Get.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Get.width / 35),
          color: AppColor.Buttoncolor,
        ),
        child: Center(
          child: Text(
            Button_Name.Login,
            style: TextStyle(
              fontSize: Get.width / 25,
              fontWeight: FontWeight.bold,
              color: AppColor.BodyColor,
            ),
          ),
        ),
      ),
    );
  }
}

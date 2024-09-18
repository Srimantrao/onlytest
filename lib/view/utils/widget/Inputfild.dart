// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:onlytest/view/utils/app_string.dart';

import '../app_color.dart';

class Inputfild extends StatelessWidget {
  final TextEditingController? controller;
  final String name;
  final String hint;
  const Inputfild({super.key, this.controller, required this.name, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,style: TextStyle(fontSize: Get.width/22,color: AppColor.Textfildcolor)),
        TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                  color: AppColor.Textfildhintcolor
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width/35),
                borderSide: BorderSide(color: AppColor.Textfildbodercolor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Get.width/35),
                borderSide: BorderSide(color: AppColor.Textfildbodercolor),
              )
          ),
        ),
        SizedBox(height: Get.height/50),
      ],
    );
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:onlytest/view/utils/app_icon.dart';

class Iconcontainer extends StatelessWidget {
  final String assetName;
  const Iconcontainer({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: Get.height/15,
      width: Get.width/4,
      child: Center(child: SvgPicture.asset(assetName)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kairos_app/common/scaffold.dart';

// ignore: use_key_in_widget_constructors
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KairosScaffold(
      showMenu: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: Get.height * .25,
            ),
          ),
          Text(
            'Welcome to KairosApp',
            style: TextStyle(fontSize: Get.height * .04),
          ),
        ],
      ),
    );
  }
}

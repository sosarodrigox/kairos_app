import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kairos_app/controllers/number_controller.dart';

class Other extends StatelessWidget {
  // Puede pedirle a Get que busque un controlador que está siendo utilizado por otra página y le redirija a él.
  final NumberController c = Get.find();

  Other({super.key});

  @override
  Widget build(context) {
    // Acceder a la variable de recuento actualizada
    return Scaffold(body: Center(child: Text(c.count.string)));
  }
}

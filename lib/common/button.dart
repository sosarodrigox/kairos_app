import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KairosButton extends StatelessWidget {
  final String text;
  final Widget child;
  final Function onPressed;

  // ignore: use_super_parameters
  const KairosButton({
    Key? key,
    required this.text,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            offset: Offset(6, 6),
            color: Color(0xFFced1dc),
            blurRadius: 5,
            spreadRadius: 3,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            color: Colors.white70,
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPressed as void Function()?,
        elevation: 0,
        color: const Color(0xFFf0f2f6),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          // child: child ?? Text(text, style: Get.textTheme.labelLarge), //Original <--
          child: Text(text, style: Get.textTheme.labelLarge),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kairos_app/common/bottom_menu.dart';

class KairosScaffold extends StatelessWidget {
  // final _userController = get.find<UserController>();
  final Widget child;
  final bool useBackground;
  final bool showMenu;
  final bool showConfigButton;

  // ignore: use_key_in_widget_constructors
  const KairosScaffold({
    required this.child,
    this.useBackground = false,
    this.showMenu = false,
    this.showConfigButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: useBackground
            ? const BoxDecoration()
            : const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1, 0.1),
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffe6e7ed),
                    Color(0xfff7f8fa),
                  ],
                ),
              ),
        child: Stack(
          children: [
            if (useBackground)
              SvgPicture.asset('assets/images/background.svg',
                  fit: BoxFit.cover),
            SafeArea(
              child: Flex(direction: Axis.vertical, children: [
                Expanded(child: child),
                if (showMenu) BottomMenu(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

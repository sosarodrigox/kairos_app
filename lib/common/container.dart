import 'package:flutter/material.dart';

enum ContainerStyle { inset, outset }

class KairosContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final Color color;
  final ContainerStyle style;

  // ignore: use_super_parameters
  const KairosContainer({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(6)),
    this.color = const Color(0xFFebecf0),
    this.style = ContainerStyle.inset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: (style == ContainerStyle.inset)
            ? Border.all(color: Colors.transparent)
            : null,
        boxShadow: [
          if (style == ContainerStyle.outset)
            BoxShadow(
              offset: const Offset(2, 2),
              color: Colors.black26.withAlpha(70),
              blurRadius: 1,
            ),
          if (style == ContainerStyle.outset)
            const BoxShadow(
              offset: Offset(-1, -1),
              color: Colors.white70,
              blurRadius: 1,
            ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: [
            if (style == ContainerStyle.inset)
              const BoxShadow(
                color: Colors.white,
                offset: Offset(3.0, 3.0),
              ),
            if (style == ContainerStyle.inset)
              const BoxShadow(
                color: Color(0xFFcfd2dd),
                offset: Offset(-3.0, -3.0),
                blurRadius: 3.0,
              ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: color,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

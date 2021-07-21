import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Applayout extends StatelessWidget {
  const Applayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6.0.h,
        left: 4.0.w,
        right: 4.0.w,
      ),
      child: child,
    );
  }
}

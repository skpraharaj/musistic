import 'package:flutter/material.dart';

class BuildDrawerHeader extends StatelessWidget {
  const BuildDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: "0\n"),
              TextSpan(text: "Songs"),
            ],
          ),
        ),
      ],
    );
  }
}

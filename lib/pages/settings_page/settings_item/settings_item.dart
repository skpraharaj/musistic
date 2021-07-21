import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.assetName,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String assetName;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        assetName,
        width: 10.0.w,
        height: 10.0.w,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: 21.0.sp,
              color: Colors.white,
            ),
      ),
      onTap: onTap,
    );
  }
}

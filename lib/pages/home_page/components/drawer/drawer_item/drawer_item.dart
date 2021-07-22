import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).backgroundColor,
        size: 20.0.sp,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: Theme.of(context).backgroundColor,
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

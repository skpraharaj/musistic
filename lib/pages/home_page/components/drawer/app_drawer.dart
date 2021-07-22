import 'package:flutter/material.dart';
import 'package:musistic/pages/home_page/components/drawer/drawer_header/drawer_header.dart';
import 'package:sizer/sizer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Theme.of(context).primaryColor,
        child: Container(
          padding: EdgeInsets.only(
            top: 5.0.h,
            left: 2.0.w,
            right: 2.0.w,
            bottom: 2.0.h,
          ),
          child: Column(
            children: const [
              BuildDrawerHeader(),
            ],
          ),
        ),
      ),
    );
  }
}

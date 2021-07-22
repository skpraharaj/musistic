import 'package:flutter/material.dart';
import 'package:musistic/pages/home_page/components/drawer/drawer_header/drawer_header.dart';
import 'package:musistic/pages/home_page/components/drawer/drawer_item/drawer_item.dart';
import 'package:sizer/sizer.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Drawer(
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
              children: [
                const BuildDrawerHeader(),
                Divider(
                  color: Theme.of(context).backgroundColor.withOpacity(0.19),
                ),
                const BuildDrawerItem(
                  icon: Icons.settings,
                  title: "Settings",
                ),
                const BuildDrawerItem(
                  icon: Icons.feedback_outlined,
                  title: "Feedback",
                ),
                const BuildDrawerItem(
                  icon: Icons.help_outlined,
                  title: "About",
                ),
                const BuildDrawerItem(
                  icon: Icons.share,
                  title: "Share",
                ),
                const BuildDrawerItem(
                  icon: Icons.info_outline_rounded,
                  title: "How to use this app",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musistic/global/constants/app_assets.dart';
import 'package:musistic/pages/settings_page/settings_item/settings_item.dart';
import 'package:sizer/sizer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 20.0.sp,
          icon: SvgPicture.asset(AppAssets.menuSvg),
          onPressed: () {},
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.likeSvg,
              height: 2.0.h,
              width: 2.0.h,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 4.0.w,
          right: 4.0.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 18.0.sp,
                    color: Colors.white,
                  ),
            ),
            SizedBox(height: 3.0.h),
            SettingsItem(
              assetName: AppAssets.notificationSvg,
              title: "Notifications",
              onTap: () {},
            ),
            SizedBox(height: 2.0.h),
            SettingsItem(
              assetName: AppAssets.themeSvg,
              title: "Theme",
              onTap: () {},
            ),
            SizedBox(height: 2.0.h),
            SettingsItem(
              assetName: AppAssets.sleepmodeSvg,
              title: "Sleep Mode",
              onTap: () {},
            ),
            SizedBox(height: 2.0.h),
            SettingsItem(
              assetName: AppAssets.lockSvg,
              title: "LockScreeen",
              onTap: () {},
            ),
            SizedBox(height: 2.0.h),
            SettingsItem(
              assetName: AppAssets.othersSvg,
              title: "Others",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

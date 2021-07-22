import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musistic/global/constants/app_assets.dart';
import 'package:sizer/sizer.dart';

class BuildDrawerHeader extends StatelessWidget {
  const BuildDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return IconButton(
            iconSize: 20.0.sp,
            icon: SvgPicture.asset(
              AppAssets.menuSvg,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          );
        }),
        SizedBox(
          height: 2.0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 8.0.h,
              width: 14.0.w,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "0\n",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    TextSpan(
                      text: "Songs",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 10.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0.h,
              width: 14.0.w,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "0\n",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    TextSpan(
                      text: "Albums",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 10.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0.h,
              width: 14.0.w,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "0\n",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    TextSpan(
                      text: "Playlists",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: Theme.of(context).backgroundColor,
                            fontSize: 10.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musistic/global/constants/app_assets.dart';
import 'package:sizer/sizer.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 6.0.h),
        child: Container(
          padding: EdgeInsets.only(
            top: 2.0.h,
            left: 2.0.w,
            right: 2.0.w,
            bottom: 2.0.h,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5.0.w),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Theme.of(context).backgroundColor,
                      ),
                      SizedBox(width: 13.0.w),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Playing from External Storage",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: Theme.of(context).backgroundColor,
                                  ),
                            ),
                            TextSpan(
                              text: "\nlocation of the file playing",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: Theme.of(context).backgroundColor,
                                    fontSize: 10.0.sp,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0.h,
                  ),
                  SizedBox(
                    height: 63.0.w,
                    width: 63.0.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                          "https://i.scdn.co/image/ab67616d0000b27397e30ace461b56002c52aa9f"),
                    ),
                  ),
                  SizedBox(
                    height: 7.0.h,
                  ),
                  Text(
                    "nevermind",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 18.0.sp,
                        ),
                  ),
                  SizedBox(
                    height: 1.0.h,
                  ),
                  Text(
                    "Valley",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).backgroundColor,
                          fontSize: 10.0.sp,
                        ),
                  ),
                  SizedBox(height: 4.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.previousSvg,
                        ),
                      ),
                      Text(
                        "-5s",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Theme.of(context).backgroundColor,
                              fontSize: 10.0.sp,
                            ),
                      ),
                      IconButton(
                        iconSize: 45.0.sp,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.playSvg,
                          width: 20.0.w,
                          height: 20.0.w,
                        ),
                      ),
                      Text(
                        "+5s",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Theme.of(context).backgroundColor,
                              fontSize: 10.0.sp,
                            ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.nextSvg,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Theme.of(context).accentColor,
                      inactiveTrackColor:
                          Theme.of(context).backgroundColor.withOpacity(0.56),
                      thumbColor: Colors.transparent,
                      disabledThumbColor: Colors.transparent,
                      thumbShape: SliderComponentShape.noThumb,
                    ),
                    child: Slider(
                      value: 56,
                      min: 0.0,
                      max: 100.0,
                      onChanged: (val) {},
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 25.0.sp,
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  IconButton(
                    iconSize: 25.0.sp,
                    onPressed: () {},
                    icon: Icon(
                      Icons.music_note_outlined,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  SizedBox(
                    width: 3.0.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.likeSvg),
                  ),
                  IconButton(
                    iconSize: 25.0.sp,
                    onPressed: () {},
                    icon: Icon(
                      Icons.shuffle_outlined,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

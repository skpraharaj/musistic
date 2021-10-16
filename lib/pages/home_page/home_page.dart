import 'package:flutter/material.dart';

//constants
import 'package:musistic/global/constants/app_assets.dart';

//widgets
import 'package:flutter_svg/svg.dart';
import 'package:musistic/global/layout/app_layout.dart';
import 'package:musistic/global/widgets/primary_button/primary_button.dart';
import 'package:musistic/pages/home_page/components/drawer/app_drawer.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            iconSize: 20.0.sp,
            icon: SvgPicture.asset(AppAssets.menuSvg),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
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
      drawer: const AppDrawer(),
      body: Applayout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.0.h,
            ),
            //No Songs Button
            Text(
              "NO SONGS",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  ),
            ),
            SizedBox(
              height: 3.0.h,
            ),
            PrimaryButton(
              onPressed: () {},
              text: "SCAN DEVICE",
            ),
            SizedBox(
              height: 5.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryButton(
                  onPressed: () {},
                  text: "SONGS",
                ),
                PrimaryButton(
                  onPressed: () {},
                  text: "ALBUMS",
                ),
                PrimaryButton(
                  onPressed: () {},
                  text: "PLAYLISTS",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

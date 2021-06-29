import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).primaryColor),
          ),
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icons/menus.svg',
                fit: BoxFit.cover,
                height: 12.0,
                width: 23.37,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0.0),
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/redlike.svg',
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                  // color: Colors.red,
                ),
              ],
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/notifications.svg',
                    fit: BoxFit.cover,
                    height: 12.0,
                    width: 23.37,
                  ),
                  Text("Notification"),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/theme.svg',
                  fit: BoxFit.cover,
                  height: 12.0,
                  width: 23.37,
                ),
                Text("Theme"),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/sleepmode.svg',
                  fit: BoxFit.cover,
                  height: 12.0,
                  width: 23.37,
                ),
                Text("Sleep Mode"),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/lockscreen.svg',
                  fit: BoxFit.cover,
                  height: 12.0,
                  width: 23.37,
                ),
                Text("Lockscreen"),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/others.svg',
                  fit: BoxFit.cover,
                  height: 12.0,
                  width: 23.37,
                ),
                Text(
                  "Others",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

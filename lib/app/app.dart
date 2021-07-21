import 'package:flutter/material.dart';
import 'package:musistic/global/constants/app_constants.dart';
import 'package:musistic/global/routes/route_generator.dart';
import 'package:musistic/global/theme/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          /*---------------Device Preview---------------*/
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          /*---------------Device Preview---------------*/
          title: AppConstants.appName,
          initialRoute: '/settingsPage',
          onGenerateRoute: RouteGenerator.generateRoute,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}

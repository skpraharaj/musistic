import 'package:flutter/material.dart';
import 'package:musistic/pages/home_page/home_page.dart';
import 'package:musistic/pages/player_page/player_page.dart';
import 'package:musistic/pages/settings_page/settings_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case '/playerPage':
        return MaterialPageRoute(
          builder: (_) => const PlayerPage(),
        );

      case '/settingsPage':
        return MaterialPageRoute(
          builder: (_) => const SettingsPage(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: const Center(
            child: Text("Error"),
          ),
        );
      },
    );
  }
}

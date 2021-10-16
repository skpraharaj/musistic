import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:musistic/app/app.dart';

void main() {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () async {
      await init();
      runApp(
        DevicePreview(
          enabled: true,
          builder: (context) {
            return const App();
          },
        ),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

Future<void> init() async => WidgetsFlutterBinding.ensureInitialized();
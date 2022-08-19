import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:wecare/screens/onboarding_pages.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(
      DevicePreview(
        //enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      // for making my app responsive on different device screen types..
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: const WelcomeScreen(),
      );
    });
  }
}

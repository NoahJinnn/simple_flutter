import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:simple_app/app/presentation/routes/app_names.dart';
import 'package:simple_app/app/presentation/routes/app_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Session http',
      debugShowCheckedModeBanner: false,
      initialRoute: AppNames.mainScreen,
      getPages: App.screens,
    );
  }
}

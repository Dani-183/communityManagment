import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/constants/strings.dart';
import 'package:task/constants/theme.dart';
import 'bindings/bindings.dart';
import 'views/community_screen/community_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      home: CommunityScreen(),
    );
  }
}


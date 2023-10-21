import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/home_layout.dart';
import 'package:quiz_project/screen_one.dart';
import 'package:quiz_project/screen_three.dart';
import 'package:quiz_project/screen_two.dart';
import 'package:quiz_project/theme.dart';

import 'app_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
        ScreenOne.routeName: (context) =>  ScreenOne(),
        ScreenTwo.routeName: (context) => ScreenTwo(),
        ScreenThree.routeName: (context) => const ScreenThree(),
      },
    );
  }
}




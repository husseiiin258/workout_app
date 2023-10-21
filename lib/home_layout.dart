import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_project/screen_one.dart';
import 'package:quiz_project/screen_three.dart';
import 'package:quiz_project/screen_two.dart';

import 'app_provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);

    List<Widget> screens = [
       ScreenOne(),
       ScreenTwo(),
       ScreenThree(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[appProvider.currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            appProvider.changeScreen(index);
          },
          currentIndex: appProvider.currentScreenIndex,

          items: [BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'One') ,
      BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'Two') ,
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Three')]) ,
    );
  }
}

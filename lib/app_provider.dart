import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier{

  int currentIndex=0 ;
  int currentScreenIndex = 0;

  changeIndex(int newIndex) {
    if (currentIndex == newIndex) return;
    currentIndex = newIndex;
    notifyListeners();
  }

  changeScreen(int screenIndex){
    if(currentScreenIndex == screenIndex) return;
    currentScreenIndex = screenIndex;
    notifyListeners();
  }
}
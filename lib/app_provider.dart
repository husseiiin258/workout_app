import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends ChangeNotifier{

  int currentIndex=0 ;
  int currentScreenIndex = 0;
  bool isSelected = false ;
  bool isSelectedTwo = false ;
  bool isSelectedThree = false ;
  bool isSelectedFour = false ;


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

  changeChip(bool value){
    isSelected = value ;
    isSelectedTwo = false ;
    isSelectedThree = false ;
    isSelectedFour = false ;
    notifyListeners();
  }
  changeChipTwo(bool valueTwo){
    isSelectedTwo = valueTwo ;
    isSelectedFour = false ;
    isSelectedThree = false ;
    isSelected = false ;
    notifyListeners();

  }
  changeChipThree(bool valueThree){
    isSelectedThree = valueThree ;
    isSelected = false;
    isSelectedTwo = false ;
    isSelectedFour = false;
    notifyListeners();
  }
  changeChipFour(bool valueFour){
    isSelectedFour = valueFour ;
    isSelected = false;
    isSelectedTwo = false ;
    isSelectedThree = false ;
    notifyListeners();
  }

}
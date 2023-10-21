
import 'package:flutter/material.dart';

class AppTheme {
static ThemeData lightTheme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedIconTheme: IconThemeData(
      color: Color(0xff027A48),
      size: 32,
    ),
    selectedItemColor: Color(0xff027A48),
    unselectedIconTheme: IconThemeData(color: Color(0xff667085), size: 28),
    unselectedItemColor: Color(0xff667085),
  ),
);
}
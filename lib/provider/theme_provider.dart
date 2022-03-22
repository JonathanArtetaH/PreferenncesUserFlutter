import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData cuurrentTheme;

  ThemeProvider({
    required bool isDartkmode 
  }):  cuurrentTheme = isDartkmode ? ThemeData.dark() : ThemeData.light();

  setLigthMode(){
    cuurrentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode(){
      cuurrentTheme = ThemeData.dark();
    notifyListeners();
  }

}
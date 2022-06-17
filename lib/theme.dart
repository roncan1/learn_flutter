import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
      primaryColor: Colors.blue,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
      )
  );
}
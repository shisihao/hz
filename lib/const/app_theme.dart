import 'package:flutter/material.dart';
import 'package:juxiu/util/color.dart';

class AppTheme {
  // 1.抽取相同的样式
  static const double _titleFontSize = 20;

  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
      primarySwatch: createMaterialColor(Color(0xFFFFFFFF)),
      primaryTextTheme: TextTheme(
          title: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          body1: TextStyle(color: Colors.black)
      )
  );

  // 3.暗黑主题
  static final ThemeData darkTheme = ThemeData(
      primaryColor: Colors.grey,
      primaryTextTheme: TextTheme(
          title: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          title: TextStyle(color: Colors.white),
          body1: TextStyle(color: Colors.white70)
      )
  );
}
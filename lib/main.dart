import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'const/string_const.dart';
import 'const/app_theme.dart';
import 'page/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 1334),
      allowFontScaling: false,
      builder: () => MaterialApp(
        title: StringConst.APP_NAME,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: HomePage(),
      ),
    );
  }
}

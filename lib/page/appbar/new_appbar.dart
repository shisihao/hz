import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAppbarView extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(44);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        shape:  Border(
            bottom: BorderSide(color: Color(0xFFECECEC),width: 1)
        ),
        title: Image.asset(
          'assets/images/new/new_title@2x.png',
          width: ScreenUtil().setWidth(90),
          height: ScreenUtil().setWidth(18),
        ),
      ),
      preferredSize: Size.fromHeight(44.0),
    );
  }
}

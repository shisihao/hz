import 'package:flutter/material.dart';
import '../../const/string_const.dart';

class HomeAppbarView extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(44);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        leadingWidth: 102,
        leading: Container(
          child: Padding(
              padding:
              EdgeInsets.only(left: 12, right: 0, top: 0, bottom: 0),
              child:
              Image.asset('assets/images/home/home_icon_mtlogo@2x.png',
                  width: 102, height: 32.5)),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {
              print('客服');
            },
          )
        ],
        centerTitle: false,
        elevation: 0,
        backgroundColor: StringConst.HOME_BG_COLOR,
      ),
      preferredSize: Size.fromHeight(44.0),
    );
  }
}

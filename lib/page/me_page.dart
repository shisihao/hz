import "package:flutter/material.dart";
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juxiu/const/string_const.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  List _newData = [1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: StringConst.HOME_BG_COLOR,
      child: EasyRefresh(
          header: BallPulseHeader(),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(
                        'assets/images/mine/me_top_bg@2x.png',
                    ),
                    centerSlice: new Rect.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    alignment: Alignment.center
                ),
              ),
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ),
          onRefresh: () async {}),
    );
  }
}

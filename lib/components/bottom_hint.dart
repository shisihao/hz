import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomHintView extends StatefulWidget {
  @override
  _BottomHintViewState createState() => _BottomHintViewState();
}

class _BottomHintViewState extends State<BottomHintView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.5, top: 0, right: 0, bottom: 0),
              child: Container(
                width: ScreenUtil().setWidth(115.0),
                height: 1,
                color: Color(0xFFC7CED8),
              ),
            ),
            Text('已经到底了',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFFC7CED8))),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 0, right: 19.5, bottom: 0),
              child: Container(
                width: ScreenUtil().setWidth(115.0),
                height: 1,
                color: Color(0xFFC7CED8),
              ),
            )
          ],
        ),
      ),
    );
  }
}

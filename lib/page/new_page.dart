import "package:flutter/material.dart";
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/bottom_hint.dart';

class NewView extends StatefulWidget {
  @override
  _NewViewState createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  List _newData = [1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: EasyRefresh(
          header: BallPulseHeader(),
          child: Container(
            padding: EdgeInsets.only(left: 12.5, right: 12.5),
            child: Column(
              children: [
                Column(
                  children: _newData.map((e) {
                    return Container(
                      width: double.infinity,
                      height: ScreenUtil().setWidth(118.5),
                      decoration: new BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFFECECEC), width: 1)),
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(211.5),
                              height: ScreenUtil().setWidth(78),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '北大国发院黄益平：数字货币或成金融竞争终极目标且数字货币或成金融竞争终极目标且数字货币或成金融竞争终极目标且',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '12小时前',
                                    style: TextStyle(
                                        fontSize: 12,color: Color(0xFF999999)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: ScreenUtil().setWidth(117),
                              height: ScreenUtil().setWidth(78),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.network(
                                  'https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3686115800,1923072980&fm=26&gp=0.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                BottomHintView()
              ],
            ),
          ),
          onRefresh: () async {}),
    );
  }
}

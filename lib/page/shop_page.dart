import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import '../const/string_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/bottom_hint.dart';

class ShopView extends StatefulWidget {
  @override
  _ShopViewState createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  List _goodsData = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    return Container(
      color: StringConst.HOME_BG_COLOR,
      child: EasyRefresh(
          header: BallPulseHeader(
              color: StringConst.HOME_BG_COLOR,
              backgroundColor: Color(0xFF7F6AFD)),
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 0, right: 0, top: 22 + topPadding, bottom: 0),
                  width: double.infinity,
                  height: ScreenUtil().setWidth(162 + topPadding),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0, 1),
                      colors: [Color(0xFF7F6AFD), StringConst.HOME_BG_COLOR],
                    ),
                  ),
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1837707887,280352309&fm=26&gp=0.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 0),
                  width: double.infinity,
                  color: StringConst.HOME_BG_COLOR,
                  child: Column(
                      children: _goodsData.map((e) {
                    return Padding(
                        padding: EdgeInsets.only(
                            left: 0, right: 0, top: 12, bottom: 0),
                        child: Container(
                          width: double.infinity,
                          height: ScreenUtil().setWidth(146),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: ScreenUtil().setWidth(130),
                                height: ScreenUtil().setWidth(130),
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 0, bottom: 0),
                                child: Image.network(
                                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3616643436,2069129911&fm=26&gp=0.jpg'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: ScreenUtil().setWidth(180),
                                    margin: EdgeInsets.only(top: 15),
                                    child: Text(
                                        '1T/3年 1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年1T/3年',
                                        softWrap: true,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: ScreenUtil().setWidth(180),
                                    margin: EdgeInsets.only(top: 11),
                                    child: Text(
                                        '这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两这里是两',
                                        softWrap: true,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF999999))),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(),
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                                child: Padding(
                                                  padding: EdgeInsets.only(bottom: 5),
                                                  child: Image.asset(
                                                    'assets/images/shop/icon_usdt@2x.png',
                                                    width: 12.0,
                                                    height: 12.0,
                                                  ),
                                                )
                                            ),
                                            WidgetSpan(
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 2,top: 42),
                                                child: Text(
                                                  '2307',
                                                  style:
                                                  TextStyle(
                                                    color: Color(0xFFFF8068),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              )
                                            ),
                                            WidgetSpan(
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: 2),
                                                  child: Text(
                                                    'USDT',
                                                    style:
                                                    TextStyle(
                                                        color: Color(0xFFFF8068)
                                                    ),
                                                  ),
                                                )
                                            )
                                          ]),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ));
                  }).toList()),
                ),
                BottomHintView()
              ],
            ),
          ),
          onRefresh: () async {}),
    );
  }
}

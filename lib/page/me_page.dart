import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juxiu/const/string_const.dart';
import 'package:juxiu/util/badge.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  Widget _TopBarView() {
    return Container(
        height: ScreenUtil().setWidth(46),
        alignment: Alignment.centerRight,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 9),
              width: ScreenUtil().setWidth(20),
              height: ScreenUtil().setWidth(20),
              child: Icon(
                Icons.chat,
                color: Colors.white,
              ),
            ),
            Positioned(
              top: -7,
              right: 0,
              child: Container(
                width: ScreenUtil().setWidth(15),
                height: ScreenUtil().setWidth(15),
                child: Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 1.0, color: Colors.white),
                    borderRadius: new BorderRadius.all(new Radius.circular(7.0)),
                  ),
                  child: GStyle.badge(9),
                ),
              ),
            )
          ],
        ));
  }

  Widget _UserView() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 8),
          width: ScreenUtil().setWidth(55),
          height: ScreenUtil().setWidth(55),
          padding: EdgeInsets.all(2.5),
          decoration: BoxDecoration(
              color: Color(0xFFF6F6F6).withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(29.0))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: Image.network(
              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1195632485,430846802&fm=26&gp=0.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '午后的猫丶',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Container(
                width: ScreenUtil().setWidth(73),
                height: ScreenUtil().setWidth(22),
                child: Image.asset('assets/images/mine/me_icon_v1.png'),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _EarningsView() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      width: double.infinity,
      height: ScreenUtil().setWidth(125),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            decoration: new BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xFFE2E2E2), width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的收益', style: TextStyle(fontSize: 15)),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ScreenUtil().setWidth(160),
                height: ScreenUtil().setWidth(75),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                          color: Color(0xFFFF8068),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: '可提现'),
                            TextSpan(
                                text: '(CNY)',
                                style: TextStyle(color: Color(0xFF999999))),
                          ]),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xFFF0F0F0),
                width: 1,
                height: ScreenUtil().setWidth(14),
              ),
              Container(
                width: ScreenUtil().setWidth(160),
                height: ScreenUtil().setWidth(75),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                          color: Color(0xFFFF8068),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(text: '累计收益'),
                            TextSpan(
                                text: '(CNY)',
                                style: TextStyle(color: Color(0xFF999999))),
                          ]),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _OrderView() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      width: double.infinity,
      height: ScreenUtil().setWidth(146),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 14, bottom: 14),
            decoration: new BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(0xFFE2E2E2), width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('我的订单', style: TextStyle(fontSize: 15)),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setWidth(96),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 13.5),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Image.asset('assets/images/mine/me_icon_dfk@2x.png',width: 25,height: 21),
                          Positioned(
                            top: -8,
                            right: -8,
                            child: Container(
                              width: ScreenUtil().setWidth(15),
                              height: ScreenUtil().setWidth(15),
                              child: Container(
                                decoration: new BoxDecoration(
                                  border: new Border.all(width: 1.0, color: Colors.white),
                                  borderRadius: new BorderRadius.all(new Radius.circular(7.0)),
                                ),
                                child: GStyle.badge(9),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                        '待付款'
                    ),
                  ],
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setWidth(96),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 13.5),
                      child: Image.asset('assets/images/mine/me_icon_dqr@2x.png',width: 21,height: 24),
                    ),
                    Text(
                        '待确认'
                    ),
                  ],
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setWidth(96),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 13.5),
                      child: Image.asset('assets/images/mine/me_icon_yfk@2x.png',width: 24,height: 22),
                    ),
                    Text(
                        '部署中'
                    ),
                  ],
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setWidth(96),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 13.5),
                      child: Image.asset('assets/images/mine/me_icon_ywc@2x.png',width: 24,height: 25),
                    ),
                    Text(
                        '已成功'
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _ItemView() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;
    return Container(
      color: StringConst.HOME_BG_COLOR,
      child: EasyRefresh(
          header: BallPulseHeader(),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: topPadding, left: 12, right: 12),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: new AssetImage(
                    'assets/images/mine/me_top_bg@2x.png',
                  ),
                  alignment: Alignment.topCenter),
            ),
            child: Column(
              children: [
                _TopBarView(),
                _UserView(),
                _EarningsView(),
                _OrderView(),
                Container(
                  margin: EdgeInsets.only(
                    top: 24,
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 14, bottom: 14),
                        decoration: new BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('我的钱包', style: TextStyle(fontSize: 15)),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14, bottom: 14),
                        decoration: new BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('我的市场', style: TextStyle(fontSize: 15)),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14, bottom: 14),
                        decoration: new BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('邀请好友', style: TextStyle(fontSize: 15)),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 14, bottom: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('设置', style: TextStyle(fontSize: 15)),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          onRefresh: () async {}),
    );
  }
}

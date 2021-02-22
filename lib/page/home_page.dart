import "package:flutter/material.dart";
import '../const/string_const.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../api/home.dart';
import '../util/request.dart';
import '../util/flutter_page_indicator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          leadingWidth: 102,
          leading: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 12, right: 0, top: 0, bottom: 0),
              child: Image.asset('assets/images/home/home_icon_mtlogo@2x.png',
                  width: 102, height: 32.5),
            ),
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
      ),
      backgroundColor: StringConst.HOME_BG_COLOR,
      body: EasyRefresh(
          header: BallPulseHeader(),
          child: ScrollView(),
          onRefresh: () async {
            /*HttpUtils.request(
            '/home',
            method: HttpUtils.GET
          ).then((value) => {
            print(value)
          }).catchError((e) {
            print("catchError " + e);
          });*/
          }),
    );
  }
}

class ScrollView extends StatefulWidget {
  @override
  _ScrollViewState createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 0),
      child: Column(
        children: [SwiperView(), NoticeView(), BlockView(), OreView()],
      ),
    );
  }
}

class SwiperView extends StatefulWidget {
  @override
  _SwiperViewState createState() => _SwiperViewState();
}

class _SwiperViewState extends State<SwiperView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: ScreenUtil().setWidth(140),
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              "http://via.placeholder.com/350x150",
              fit: BoxFit.fill,
            );
          },
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.red,
              )),
        ));
  }
}

class NoticeView extends StatefulWidget {
  @override
  _NoticeViewState createState() => _NoticeViewState();
}

class _NoticeViewState extends State<NoticeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 0, right: 0, top: 16, bottom: 0),
        child: Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setWidth(36),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
            ),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: ScreenUtil().setWidth(36),
                      height: ScreenUtil().screenHeight,
                      child: Center(
                        child: Image.asset(
                            'assets/images/home/home_icom_tongzhi@2x.png',
                            width: ScreenUtil().setWidth(20),
                            height: ScreenUtil().setWidth(20)),
                      )),
                  Container(
                    width: ScreenUtil().setWidth(279),
                    height: ScreenUtil().screenHeight,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 6.5, right: 6.5, top: 0, bottom: 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ScrollPhysics并不是一个组件，它定义了可滚动组件的物理滚动特性。例如，当用户达到最大滚动范围时，是停止滚动，还是继续滚动',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: ScreenUtil().setWidth(36),
                      height: ScreenUtil().screenHeight,
                      child: Center(
                        child: Icon(
                          Icons.menu,
                          color: Color(0xFFC7CED8),
                        ),
                      )),
                ],
              ),
              onTap: () {
                print("点击公告");
              },
            )));
  }
}

class BlockView extends StatefulWidget {
  @override
  _BlockViewState createState() => _BlockViewState();
}

class _BlockViewState extends State<BlockView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 0, right: 0, top: 16, bottom: 0),
        child: Container(
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().setWidth(57.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: ScreenUtil().setWidth(171.5),
                  height: ScreenUtil().screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/home/img_home_bg_pib@2x.png'),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.5, right: 0, top: 0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '499200',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '全网总算力(PIB)',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  width: ScreenUtil().setWidth(171.5),
                  height: ScreenUtil().screenHeight,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/home/img_home_bg_qkgd@2x.png'),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15.5, right: 0, top: 0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '76251',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '最新区块高度',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}

class OreView extends StatefulWidget {
  @override
  _OreViewState createState() => _OreViewState();
}

class _OreViewState extends State<OreView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 19.5, bottom: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '矿池数据',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 0),
            child: Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().setWidth(74),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(171.5),
                      height: ScreenUtil().screenHeight,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                        image: new DecorationImage(
                          image: AssetImage(
                              'assets/images/home/home_icon_liutong@2x.png'),
                        ),
                      ),
                      child: Text('dads'),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(171.5),
                      height: ScreenUtil().screenHeight,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/home/img_home_bg_qkgd@2x.png'),
                        ),
                      ),
                      child: Text('dads'),
                    )
                  ],
                ),
            )
        )
      ],
    );
  }
}

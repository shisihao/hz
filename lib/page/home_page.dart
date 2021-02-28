import "package:flutter/material.dart";
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/bottom_hint.dart';

class HomePage extends StatelessWidget {

  // bannar
  Widget _SwiperView() {
    List _imageUrls = [
      'https://img.zcool.cn/community/01223f56fb35ba6ac7257948d78c38.jpg@1280w_1l_2o_100sh.jpg',
      'https://img.zcool.cn/community/019ecb56fb35ba32f875a944c38d7c.jpg@1280w_1l_2o_100sh.jpg',
      'https://img.zcool.cn/community/018ab156fb35d26ac7257948c8cc95.jpg@1280w_1l_2o_100sh.jpg',
    ];
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
          width: double.infinity,
          height: ScreenUtil().setWidth(140),
          color: Colors.white,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                _imageUrls[index],
                fit: BoxFit.cover,
              );
            },
            itemCount: _imageUrls.length,
            autoplay: true,
            pagination: new SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: Colors.black54,
                  activeColor: Colors.white,
                )),
          )),
    );
  }

  // 公告
  Widget _NoticeView() {
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
                  Flexible(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 6.5, right: 6.5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '并不是一个组件，它定义了可滚动组件的物理滚动特性。例如，当用户达到最大滚动范围时，是停止滚动，还是继续滚动',
                            softWrap: true,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
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

  // 数据块
  Widget _BlockView() {
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
                                fontWeight: FontWeight.w600),
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
                            style: TextStyle(fontSize: 12, color: Colors.white),
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
                                fontWeight: FontWeight.w600),
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

  // 矿场数据
  Widget _OreView() {
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
                  fontWeight: FontWeight.w600),
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
                          image: AssetImage('assets/images/home/222.png'),
                          scale: 2,
                          alignment: Alignment(1, 0),
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
                                    fontSize: 17,
                                    color: Color(0xFFEF876F),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                right: 6.0,
                                                top: 0,
                                                bottom: 1.0),
                                            child: ImageIcon(
                                                AssetImage(
                                                    'assets/images/home/home_icon_reward@2x.png'),
                                                size: 12),
                                          )),
                                      WidgetSpan(
                                        child: Text(
                                          '24h平均挖矿收益(FIL/TiB)',
                                          softWrap: true,
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF333333)),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                  Container(
                      width: ScreenUtil().setWidth(171.5),
                      height: ScreenUtil().screenHeight,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                        image: new DecorationImage(
                          image: AssetImage('assets/images/home/222.png'),
                          scale: 2,
                          alignment: Alignment(1, 0),
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
                                    fontSize: 17,
                                    color: Color(0xFFEF876F),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                right: 6.0,
                                                top: 0,
                                                bottom: 1.0),
                                            child: ImageIcon(
                                                AssetImage(
                                                    'assets/images/home/home_icon_time@2x.png'),
                                                size: 12),
                                          )),
                                      WidgetSpan(
                                        child: Text(
                                          '近24h产出量(FIL)',
                                          softWrap: true,
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF333333)),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                ],
              ),
            )),
        Padding(
            padding: EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 0),
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
                          image: AssetImage('assets/images/home/222.png'),
                          scale: 2,
                          alignment: Alignment(1, 0),
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
                                    fontSize: 17,
                                    color: Color(0xFFEF876F),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                right: 6.0,
                                                top: 0,
                                                bottom: 1.0),
                                            child: ImageIcon(
                                                AssetImage(
                                                    'assets/images/home/home_icon_number@2x.png'),
                                                size: 12),
                                          )),
                                      WidgetSpan(
                                        child: Text(
                                          '活跃矿工数(人)',
                                          softWrap: true,
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF333333)),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                  Container(
                      width: ScreenUtil().setWidth(171.5),
                      height: ScreenUtil().screenHeight,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                        image: new DecorationImage(
                          image: AssetImage('assets/images/home/222.png'),
                          scale: 2,
                          alignment: Alignment(1, 0),
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
                                    fontSize: 17,
                                    color: Color(0xFFEF876F),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 0,
                                                right: 6.0,
                                                top: 0,
                                                bottom: 1.0),
                                            child: ImageIcon(
                                                AssetImage(
                                                    'assets/images/home/home_icon_liutong@2x.png'),
                                                size: 12),
                                          )),
                                      WidgetSpan(
                                        child: Text(
                                          '流通总量(FIL)',
                                          softWrap: true,
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF333333)),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )),
                ],
              ),
            ))
      ],
    );
  }

  // 实时行情
  Widget _RealTimeView() {
    List realTimedata = [1, 2, 3, 4, 5, 6, 7, 8];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 0, right: 0, top: 19.5, bottom: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '实时行情',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 0),
            child: Container(
              width: ScreenUtil().screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: ScreenUtil().setWidth(164),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 0, top: 0, bottom: 0),
                          child: Text('名称'),
                        ),
                      )),
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('最新价'),
                    ),
                  ),
                  Container(
                      width: ScreenUtil().setWidth(84),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 0, right: 10, top: 0, bottom: 0),
                          child: Text('涨跌幅'),
                        ),
                      )),
                ],
              ),
            )),
        Column(
          children: realTimedata.map((i) {
            return Padding(
                padding: EdgeInsets.only(left: 0, right: 0, top: 8, bottom: 0),
                child: Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setWidth(64),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: ScreenUtil().setWidth(164),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 0, top: 0, bottom: 0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/home/fil.png',
                                  width: 33,
                                  height: 33,
                                ),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: ScreenUtil().setWidth(121),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 8,
                                              right: 0,
                                              top: 0,
                                              bottom: 0),
                                          child: Text(
                                            'FIL',
                                            softWrap: true,
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          width: ScreenUtil().setWidth(121),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 8,
                                                right: 0,
                                                top: 0,
                                                bottom: 0),
                                            child: Text(
                                              '24H量 125478231',
                                              style: TextStyle(
                                                  color: Color(0xFF999999)),
                                            ),
                                          ))
                                    ])
                              ],
                            ),
                          )),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        '1.04',
                                        softWrap: true,
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '¥6.57',
                                        style:
                                        TextStyle(color: Color(0xFF999999)),
                                      ),
                                    )
                                  ])
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: ScreenUtil().setWidth(84),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 0, right: 10, top: 0, bottom: 0),
                            child: Container(
                                height: ScreenUtil().setWidth(28),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                    color: Color(0xFFC66865)),
                                child: Center(
                                  child: Text(
                                    '-0.22%',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          )),
                    ],
                  ),
                ));
          }).toList(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        header: BallPulseHeader(),
        child: Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 0),
          child: Column(
            children: [
              _SwiperView(),
              _NoticeView(),
              _BlockView(),
              _OreView(),
              _RealTimeView(),
              BottomHintView()
            ],
          ),
        ),
        onRefresh: () async {
          /*HttpUtils.request(
            '/home',
            method: HttpUtils.GET
          ).then((value) => {
            print(value)
          }).catchError((e) {
            print("catchError " + e);
          });*/
        }
      );
  }
}
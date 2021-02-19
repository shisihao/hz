import "package:flutter/material.dart";
import '../const/string_const.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../api/home.dart';
import '../util/request.dart';

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
        onRefresh: () async{
          /*HttpUtils.request(
            '/home',
            method: HttpUtils.GET
          ).then((value) => {
            print(value)
          }).catchError((e) {
            print("catchError " + e);
          });*/
        }
      ),
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

        children: [
          SwiperView(),

        ],
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
        itemBuilder: (BuildContext context,int index){
          return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
      ),
    );
  }
}





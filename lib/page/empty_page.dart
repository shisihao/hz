import "package:flutter/material.dart";
import '../const/string_const.dart';
import 'home_page.dart';
import 'shop_page.dart';
import 'new_page.dart';
import 'me_page.dart';
import 'appbar/home_appbar.dart';
import 'appbar/new_appbar.dart';

class EmptyPage extends StatefulWidget {
  @override
  _EmptyState createState() => _EmptyState();
}

class _EmptyState extends State<EmptyPage> {
  int _index = 0;
  final List<Widget> chiledList = [HomePage(),ShopView(),NewView(),MePage()];
  final List<Widget> appBarList = [HomeAppbarView(),null,NewAppbarView(),null];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarList[_index],
        backgroundColor: _index == 0 ? StringConst.HOME_BG_COLOR : StringConst.BG_COLOR,
        body: chiledList[_index],
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
              //设置背景色`BottomNavigationBar`
              /*canvasColor: Colors.green,*/
              //设置高亮文字颜色
                primaryColor: Color(0xFF7F6AFD),
                //设置一般文字颜色
                textTheme: Theme
                    .of(context)
                    .textTheme
                    .copyWith(
                    caption: new TextStyle(color: Color(0xFFC3C2CE)))),
            child: BottomNavigationBar(
              currentIndex: _index,
              onTap: (int index) {
                setState(() {
                  this._index = index;
                }
                );
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF7F6AFD),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(title: Text('首页'),
                    icon: Image.asset(
                        'assets/images/tab/icon_tab_home@2x.png', width: 26,
                        height: 26),
                    activeIcon: Image.asset(
                        'assets/images/tab/icon_tab_home_pre@2x.png', width: 26,
                        height: 26)),
                BottomNavigationBarItem(title: Text('商城'),
                    icon: Image.asset(
                        'assets/images/tab/icon_tab_shop_normal@2x.png',
                        width: 26, height: 26),
                    activeIcon: Image.asset(
                        'assets/images/tab/icon_tab_shop_pre@2x.png', width: 26,
                        height: 26)),
                BottomNavigationBarItem(title: Text('资讯'),
                    icon: Image.asset(
                        'assets/images/tab/icon_tab_kuaixun_normal@2x.png',
                        width: 26, height: 26),
                    activeIcon: Image.asset(
                        'assets/images/tab/icon_tab_kuaixun_pre@2x.png',
                        width: 26, height: 26)),
                BottomNavigationBarItem(title: Text('我的'),
                    icon: Image.asset(
                        'assets/images/tab/icon_tab_mine_normal@2x.png',
                        width: 26, height: 26),
                    activeIcon: Image.asset(
                        'assets/images/tab/icon_tab_mine_pre@2x.png', width: 26,
                        height: 26)),
              ],
            )
        ));
  }
}

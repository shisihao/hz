import "package:flutter/material.dart";
import '../const/string_const.dart';
import 'home_page.dart';
import 'shop_page.dart';
import 'new_page.dart';

class EmptyPage extends StatefulWidget {
  @override
  _EmptyState createState() => _EmptyState();
}

class _EmptyState extends State<EmptyPage> {
  int _index = 0;
  final List<Widget> chiledList = [HomePage(),ShopView(),NewView(),ShopView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: _index == 0 ?
          PreferredSize(
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
          )
        : null
        ,*/
        appBar: PreferredSize(
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
        ),
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

import 'package:flutter/material.dart';
import 'package:toptik/view/root_Page/home_page.dart';
import 'package:toptik/view/root_Page/music_page.dart';
import 'package:toptik/view/root_Page/profile_page.dart';
import 'package:toptik/view/root_Page/tiny_video.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

const Map<String, String> _bottomNames = {
  'all': '主页',
  'favorites': '音乐',
  'play': '',
  'pic': '小视频',
  'integral': '我的'
};

class _RootPageState extends State<RootPage> {
  //当前选中索引
  int _currentIndex = 0;

  //页面集合
  final List<Widget> _pages = [
    HomePage(),
    MusicPage(),
    Container(),
    TinyvideoPage(),
    ProfilePage()
  ];
  //底部item数组
  final List<BottomNavigationBarItem> _bottomNavBarList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bottomNames.forEach((key, value) {
      _bottomNavBarList.add(_bottomNavigationBarItem(key, value));
    });
  }

//底部切换
  void _onTabClick(int value) {
    if (value == 2) {
      return _onCreateMedia();
    }
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavBarList,
        currentIndex: _currentIndex,
        onTap: _onTabClick,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: _creatMediaButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

//发布按钮
  Widget _creatMediaButton() {
    return Container(
      width: 44,
      height: 44,
      margin: EdgeInsets.only(top: 56),
      child: FloatingActionButton(
        child: Image.asset(
          'assets/images/icons/play.png',
        ),
        onPressed: _onCreateMedia,
      ),
    );
  }

  //每一项baritem
  BottomNavigationBarItem _bottomNavigationBarItem(String key, String value) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/icons/$key.png',
        width: 24,
        height: 24,
      ),
      activeIcon: Image.asset(
        'assets/images/icons/$key-fill.png',
        width: 24,
        height: 24,
      ),
      label: value,
      tooltip: '',
    );
  }

  void _onCreateMedia() {
    print('_onCreateMedia');
  }
}

import 'package:a_bujo/view/page/day_page.dart';
import 'package:a_bujo/view/page/future_page.dart';
import 'package:a_bujo/view/page/month_page.dart';
import 'package:a_bujo/view/page/personal_page.dart';
import 'package:a_bujo/view/page/week_page.dart';
import 'package:a_bujo/view/widget/Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'index_page.dart';

/// 首页
class HomePage extends StatefulWidget {
  /// 未来页面下标
  static const FUTURE_RECORD_PAGE = 0;

  /// 月常页面下标
  static const MONTH_RECORD_PAGE = 1;

  /// 日常页面下标
  static const DAY_RECORD_PAGE = 2;

  /// 个人页面下标
  static const PERSONAL_PAGE = 3;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 当前下标
  var _currentPageIndex;

  /// tab页面
  var indexPage, futurePage, monthPage, weekPage, dayPage, personalPage;

  ///保存页面的List
  List<Widget> pageList = [];

  /// 初始化控制器
  PageController pageController;

  List<Item> _data;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = HomePage.DAY_RECORD_PAGE;

    ///创建控制器的实例
    pageController = new PageController(
      ///用来配置PageView中默认显示的页面 从中间页面开始
      initialPage: HomePage.DAY_RECORD_PAGE,

      ///为true是保持加载的每个页面的状态
      keepPage: true,
    );

    ///PageView设置滑动监听
    pageController.addListener(() {
      //PageView滑动的距离
      double offset = pageController.offset;
      print("pageView 滑动的距离 $offset");
    });

    ///保存标签页面
    pageList = [
      futurePage ??= new FuturePage(),
      monthPage ??= new MonthPage(),
//      weekPage ??= new WeekPage(),
      dayPage ??= new DayPage(),
      personalPage ??= new PersonalPage(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  //底部导航栏按钮点击事件
  //动画切换页面
  void _onTapHandler(int index) {
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  //滑动切换页面
  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _data = _generateItems(8);
    return new Scaffold(
      body: PageView.builder(
          onPageChanged: _onPageChanged,
          controller: pageController,
          itemCount: pageList.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return pageList[index];
          }), //      CupertinoTabBar 是IOS分格
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DrawerHeader(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.book),
                          Text("索引"),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.stocksnap.io/img-thumbs/960w/ice-nature_PHKM6CXBLQ.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                )
              ],
            ),
            Expanded(child: _buildPanel())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        elevation: 8.0,
        type: BottomNavigationBarType.fixed,
//        selectedItemColor: ThemeUtils.getNavigatorSelectTextColor(context),
//        unselectedItemColor: ThemeUtils.getNavigatorUnSelectTextColor(context),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        unselectedFontSize: 12,
//        selectedLabelStyle: navSelTextStyle,
//        unselectedLabelStyle: navUnSelTextStyle,
//        backgroundColor: ThemeUtils.getNavigatorBgColor(context),
        mouseCursor: SystemMouseCursors.none,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
            label: ("未来志"),
            icon: Icon(
              Icons.folder,
              color: Colors.orangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: ("月历"),
            icon: Icon(
              Icons.calendar_today,
              color: Colors.orangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: ("日志"),
            icon: Icon(
              Icons.format_list_bulleted,
              color: Colors.orangeAccent,
            ),
          ),
          BottomNavigationBarItem(
            label: ("个人"),
            icon: Icon(
              Icons.account_circle,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }

  ///当前页面body样式
  getCurrentBody() {
    switch (_currentPageIndex) {
      //  ??运算，当homePage为空时将new HomePage()赋值给homePage，否则保持不变
      case HomePage.FUTURE_RECORD_PAGE:
        futurePage ??= new FuturePage();
        return futurePage;
        break;

      case HomePage.MONTH_RECORD_PAGE:
        futurePage ??= new MonthPage();
        return futurePage;
        break;
      case HomePage.DAY_RECORD_PAGE:
        futurePage ??= new DayPage();
        return futurePage;
        break;
      case HomePage.PERSONAL_PAGE:
        personalPage ??= new PersonalPage();
        return personalPage;
        break;
    }
    return Container(
      child: Text("error"),
    );
  }

  ///封装方法构建PageView组件
  PageView buildBodyFunction() {
    ///可实现左右页面滑动切换
    return PageView(
      //当页面选中后回调此方法
      //参数[index]是当前滑动到的页面角标索引 从0开始
      onPageChanged: (int index) {
        print("当前的页面是 $index");

        /// 滑动PageView时，对应切换选择高亮的标签
        setState(() {
          _currentPageIndex = index;
        });
      },
      //值为flase时 显示第一个页面 然后从左向右开始滑动
      //值为true时 显示最后一个页面 然后从右向左开始滑动
      reverse: false,
      //滑动到页面底部无回弹效果
      physics: BouncingScrollPhysics(),
      //横向滑动切换
      scrollDirection: Axis.horizontal,
      //页面控制器
      controller: pageController,
      //所有的子Widget
      children: pageList,
    );
  }

  List<Item> _generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return Item(
        title: ListTile(
          title: Text(
            "分组$index",
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int childIndex) {
              return ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "成员$index - $childIndex",
                  style: TextStyle(fontSize: 18),
                ),
              );
            },
            itemCount: 2,
          ),
        ),
      );
    });
  }

  Widget _buildPanel() {
    return ListView(
      shrinkWrap: true,
      children: _data.map<ExpansionTile>((item) {
        return ExpansionTile(
           trailing: Icon(Icons.arrow_drop_up),
          onExpansionChanged: (isOpen) {},
          title: item.title,
          children: [item.body],
          initiallyExpanded: false,
        );
      }).toList(),
    );
  }
}

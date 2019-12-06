import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/home/Boy_Page.dart';
import 'package:myproject/home_banner/home_banner.dart';
import 'package:myproject/uitjs/colors.dart';
class MyHomePage extends StatefulWidget{

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  ScrollController _scrollController;
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _scrollController=ScrollController();
    _tabController=TabController(vsync: this,length: 4);
  }
  @override
  void dispose(){
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SafeArea( //解决不规则屏幕问题
        child: Column(  //垂直列布局
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,//展示的方向 水平方向
              children: <Widget>[
                Expanded( //布局自动撑开控件
                  flex: 1,
                  child: GestureDetector( //手势检测控件
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeBanner()));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(12, 5, 0,0), //控制上线左右外边距
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)), //设置5DP的圆角
                        color: MyColors.homeGrey,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,10, 0),
                            child: Image.asset('images/icon_home_search.png',width: 15,height: 15,),
                          ),
                          Text('搜索本地网络及书籍',style:TextStyle(color:Colors.black26,fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print('分类');
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/icon_classification.png',width: 22,height: 22,),
                      ],
                    ),
                  ),
                )
              ],
            ),
            TabBar(
              controller:_tabController,
              labelColor: MyColors.homeTabText,
              unselectedLabelColor: MyColors.homeTabGreyText,
              labelStyle: TextStyle(fontSize: 16),
              labelPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              indicatorColor: MyColors.homeTabText,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 6),
              tabs: <Widget>[
                Text("精选"),
                Text("男生"),
                Text("女生"),
                Text("出版"),
              ],
            ),
            Divider(height: 1, color: MyColors.dividerDarkColor),
            Expanded(
              child: TabBarView(controller:_tabController,children: [
               BoyPage(),
                Text('123'),
                Text('123'),
                Text('123'),
              ]),
            )
          ],
        ),
      )

    );
  }


}
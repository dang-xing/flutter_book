import 'package:flutter/material.dart';
import 'package:myproject/home/Home_Page.dart';
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState()=>_TabNavigatorState();
}
class _TabNavigatorState extends State<TabNavigator>{
    final _defaultColor=Colors.black26;
    final _activeColor=Colors.lightGreen;
    int _currentIndex=0;
    final PageController _controller=PageController(
      initialPage: 0,
    );
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( //脚手架
      body: PageView(  //页面容器
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
        ],
        physics: new NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books,color:_defaultColor),
            activeIcon: Icon(Icons.library_books,color: _activeColor,),
            title: Text('书架',style: TextStyle(
              color: _currentIndex!=0?_defaultColor:_activeColor
            ),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book,color:_defaultColor),
              activeIcon: Icon(Icons.book,color: _activeColor,),
              title: Text('书城',style: TextStyle(
                  color: _currentIndex!=1?_defaultColor:_activeColor
              ),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.format_indent_increase,color:_defaultColor),
              activeIcon: Icon(Icons.format_indent_increase,color: _activeColor,),
              title: Text('分类',style: TextStyle(
                  color: _currentIndex!=2?_defaultColor:_activeColor
              ),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color:_defaultColor),
              activeIcon: Icon(Icons.account_circle,color: _activeColor,),
              title: Text('我的',style: TextStyle(
                  color: _currentIndex!=3?_defaultColor:_activeColor
              ),)
          ),
        ],
      ),
    );
  }
}

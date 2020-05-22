import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myproject/home/Home_Page.dart';
import 'package:myproject/uitjs/colors.dart';
void main() {
  runApp(MyApp());
  //设置状态栏透明
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cursorColor: MyColors.textPrimaryColor,
        scaffoldBackgroundColor: MyColors.white,
        primaryColor: MyColors.primary,
      ),
      home:MyHomePage(),
    );
  }
}



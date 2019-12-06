import 'package:flutter/material.dart';
import 'package:myproject/navigator/tab_navigator.dart';
class HomeBanner extends StatefulWidget{
  @override
  _HomeBannerState createState()=>_HomeBannerState();
}
class _HomeBannerState extends State<HomeBanner>{
  @override
  void initState(){
    super.initState();
    starHome();
  }
  starHome() async{
    await Future.delayed(const Duration(milliseconds: 2000),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>TabNavigator())
      );
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Image.asset(
        "images/launch_image.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
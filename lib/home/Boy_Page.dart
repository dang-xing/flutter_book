import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myproject/model/book_home.dart';
import 'package:http/http.dart' as http;
import 'package:myproject/uitjs/colors.dart';
import 'package:myproject/widget/Book_List.dart';
import 'package:myproject/widget/Local_Nav.dart';
class BoyPage extends StatefulWidget{
  final String type;
  BoyPage(this.type);
  @override
  _BoyPage createState()=>_BoyPage();
}
class _BoyPage extends State<BoyPage>{
  List<BookHomeDataBannerListBookConfig> bookConfig=[];
  List<BookHomeDataIconBookConfig> bookIcon=[];
  List<BookHomeDataBookSingleBookConfig> bookImg=[];
  List<BookHomeDataHomeRecommand> boyData=[];
  List<BookHomeDataHomeRecommandBookConfig> boyDataList=[];
  var imgUrl='';
  Future<BookHomeEntity> fetchPost() async{
    final response=await http.get('http://api.book.lieying.cn/Book/homeBookNew?gender='+this.widget.type);
    final result=json.decode(response.body);
    return new BookHomeEntity.fromJson(result) ;
  }
  SwiperController _swiperController;
  @override
  void initState() {
    super.initState();
    fetchPost().then((BookHomeEntity value){
      bookImg=value.data.bookSingle[0].bookConfig;
      setState(() {
        bookConfig=value.data.bannerList[0].bookConfig;
        bookIcon=value.data.icon[0].bookConfig;
        bookImg=value.data.bookSingle[0].bookConfig;
        boyDataList=value.data.homeRecommend[0].bookConfig;
        boyData=value.data.homeRecommend;
        bookImg.forEach((item)=>{
          imgUrl=item.imageUrl
        });
      });
    });
    _swiperController = new SwiperController();
    _swiperController.startAutoplay();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children: <Widget>[
          _banner,
          LocalNav(bookIcon: bookIcon),
          BookList(boyData: boyData,boyDataList: boyDataList,),
          GestureDetector(
            onTap: ()=>{
              print('1')
            },
            child:Container(
              height: 160,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                    image: new DecorationImage(image: new NetworkImage(imgUrl),fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),

        ],
    );
  }
  Widget get _banner{
    return Container(
      height: 170,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Swiper(
        itemCount:bookConfig.length,
        loop: false,
        autoplay: false,
        controller: _swiperController,
        itemBuilder: (BuildContext context,int index){
          return Container(
            decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(bookConfig[index].imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          );
        },
        pagination: new SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: MyColors.textBlack6,
            color: Colors.white,
            size: 7,
            activeSize: 7,
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _swiperController.stopAutoplay();
    _swiperController.dispose();
    super.dispose();
  }
}



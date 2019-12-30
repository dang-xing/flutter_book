import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/model/body_model.dart';
import 'package:http/http.dart' as http;
import 'package:myproject/widget/bookList.dart';
class BoyPage extends StatefulWidget{
  @override
  _BoyPage createState()=>_BoyPage();
}
class _BoyPage extends State<BoyPage>{
  List<BodyModelDataList> _bookType=[];
  List<BodyModelDataListRecommandbookinfovo> bookListData=[];
  Future<BodyModel> fetchPost() async{
    final response=await http.get('http://mp3.cyxlove.cn/api/articleApi/articlelist');
    final result=json.decode(response.body);
    return new BodyModel.fromJson(result) ;
  }

  @override
  void initState() {
    super.initState();
    fetchPost().then((BodyModel value){
      _bookType=value.data.xList;
      for(var i=0;i<_bookType.length;i++){
        bookListData.addAll(value.data.xList[i].recommendBookInfoVo);
      }
      setState(() {
        _bookType=_bookType;
        bookListData=bookListData;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        children: <Widget>[
          BookDataList(),
        ],
    );
  }


}



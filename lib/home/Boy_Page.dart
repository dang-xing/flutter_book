import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/model/body_model.dart';
import 'package:myproject/uitjs/colors.dart';
import 'package:http/http.dart' as http;
class BoyPage extends StatefulWidget{
  @override
  _BoyPage createState()=>_BoyPage();
}
class _BoyPage extends State<BoyPage>{
  List<BodyModelDataList> item=[];
  List<BodyModelDataListRecommandbookinfovo> _list=[];
  Future<BodyModel> fetchPost() async{
    final response=await http.get('http://mp3.cyxlove.cn/api/articleApi/articlelist');
    final result=json.decode(response.body);
    return new BodyModel.fromJson(result) ;
  }

  @override
  void initState() {
    super.initState();
    fetchPost().then((BodyModel value){
      item=value.data.xList;
      for(var i=0;i<item.length;i++){
        _list.addAll(value.data.xList[i].recommendBookInfoVo);
      }
      _list.forEach((item)=>{
        print(item.authorName)
      });

      setState(() {
        item=value.data.xList;
        _list=_list;

      });
    

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context,position){
          return InkWell(
            onTap: (){
              print(position);
            },
            child:Container(
              padding: EdgeInsets.fromLTRB(15, 12, 15, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(_list[position].bookImg,width: 77,height: 99,),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_list[position].bookName,style: TextStyle(color: MyColors.textBlack3,fontSize: 16),),
                        SizedBox(height: 6,),
                        Text(_list[position].bookIntro,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:TextStyle(color:MyColors.textBlack9,fontSize: 13,height: 1.5,),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                _list[position].authorName,
                                style: TextStyle(
                                  color: MyColors.textBlack9,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: MyColors.textBlack9,width: 0.8),
                                borderRadius: BorderRadius.all(new Radius.circular(3.0)),
                              ),
                              child: Text(_list[position].categoryName,style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: MyColors.textBlack9,width: 0.8),
                                borderRadius: BorderRadius.all(new Radius.circular(3.0)),
                              ),
                              child: Text('完本',style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ) ,
          );
    });
  }


}

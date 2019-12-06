import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/uitjs/colors.dart';
class BoyPage extends StatefulWidget{
  @override
  _BoyPage createState()=>_BoyPage();
}
class _BoyPage extends State<BoyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: 10,
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
                  Image.network('http://static.zongheng.com/upload/cover/fb/e0/fbe07ad7071f10e15ebba5743b6438b0.jpeg',width: 77,height: 99,),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('英雄联盟只谁与争锋',style: TextStyle(color: MyColors.textBlack3,fontSize: 16),),
                        SizedBox(height: 6,),
                        Text('百度翻译是百度发布的在线翻译服务，依托互联网数据资源和自然语言处理技术优势，致力于帮助用户跨越语言鸿沟，方便快捷地获取信息和服务。百度翻译支持全球28种热门语言互译，包括中文（简体）、英语、日语、韩语、西班牙语、泰语、法语',
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
                                '余洛城',
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
                                borderRadius: BorderRadius.all(new Radius.circular(5.0)),
                              ),
                              child: Text('限免',style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: MyColors.textBlack9,width: 0.8),
                                borderRadius: BorderRadius.all(new Radius.circular(5.0)),
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
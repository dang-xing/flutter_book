import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/uitjs/colors.dart';
class BookDetail extends StatefulWidget{
  _BookDetail createState()=>_BookDetail();
}
class _BookDetail extends State<BookDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
          Navigator.pop(context);
        },),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),onPressed: (){},)
        ],
      ),
      body: SafeArea(
        child:new Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                    color: Colors.black12,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 100,),
                            SizedBox(height: 20,),
                            Text('极品神医混花都',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                Text('都市生活'),
                                Container(width: 1,height: 10,margin:EdgeInsets.all(5),color: Colors.grey,),
                                Text('连载中'),
                                Container(width: 1,height: 10,margin:EdgeInsets.all(5),color: Colors.grey,),
                                Text('309万字'),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('简介',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('桃花村走出来的少年，用他出神入化的医术，踢开了都市的大门。带着千年门派的传承，神秘的身世，面对强大的敌人，少年在花都将上演怎么样的爱情，友情，忠诚，与背叛，少年又将何去何',
                            style: TextStyle(
                                fontSize: 14, color: MyColors.textBlack6, height: 1.5),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text('目录',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                child: Text('更新至第2371章最大家族',style: TextStyle(fontSize: 12,color:  MyColors.textBlack6),),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
                Container(
                  color: Colors.black12,
                  padding: EdgeInsets.all(10),
                  child: Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text('同类小说还有',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              child:Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: MyColors.textBlack9,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Wrap(
                          spacing: 9,
                          runSpacing: 8,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 73,),
                                SizedBox(height: 10,),
                                Text('小伙子'),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 73,),
                                SizedBox(height: 10,),
                                Text('小伙子'),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 73,),
                                SizedBox(height: 10,),
                                Text('小伙子'),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 73,),
                                SizedBox(height: 10,),
                                Text('小伙子'),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 73,),
                                SizedBox(height: 10,),
                                Text('小伙子'),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ],
                        )


                      ],
                    ),
                  )
                ),
              ],
            ),
            new Positioned(
                bottom: 0,
                left: 0,
                child:Container(
                  height: 60,
                  width: 360,
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.white,
                  child:Row(
                    children: <Widget>[
                          Expanded(
                          child: new RaisedButton(onPressed: (){},
                            child: new Text("开始阅读"),
                            textColor:Colors.white,
                            color: Colors.deepOrange,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                          )
                    ],
                  )
                )
            )
          ],
        )
      ),
    );
  }

}

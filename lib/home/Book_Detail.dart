import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BookDetail extends StatefulWidget{
  _BookDetail createState()=>_BookDetail();
}
class _BookDetail extends State<BookDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){},),
        title: Text('老孟'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),onPressed: (){},)
        ],
      ),
      body: SafeArea(
        child:Container(
          height: 400,
          color: Colors.blue,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                 Image.network('http://ly-xiaoshuo.oss-cn-hangzhou.aliyuncs.com/book/book_cover/14321.jpg',width: 100,),
                 SizedBox(height: 15,),
                 Text('极品神医混花都',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                 Row(
                   children: <Widget>[
                     Text('都市生活'),
                     Container(width: 1,height: 10,margin:EdgeInsets.all(5),color: Colors.grey,)
                   ],
                 )
                ],
              ),
            ],
          )

        )
      ),
    );
  }

}

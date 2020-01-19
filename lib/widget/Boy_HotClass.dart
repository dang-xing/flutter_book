import 'package:flutter/material.dart';
import 'package:myproject/model/book_home.dart';
import 'package:myproject/uitjs/colors.dart';
class BoyClss extends StatelessWidget{
  final List<BookHomeDataHotCategory> BoyHotBook;

  const BoyClss({Key key, this.BoyHotBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text('男生热门分类',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Icon(Icons.arrow_forward_ios,size: 12,color: MyColors.textBlack9,),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                   // image: new DecorationImage(image: new NetworkImage(),fit: BoxFit.cover)
                ),
              ),
              Container(
                child: Text('123'),
              ),
              Container(
                child: Text('123'),
              )
            ],
          )
        ],
      ),
    );
  }

}
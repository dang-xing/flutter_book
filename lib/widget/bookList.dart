import 'package:flutter/material.dart';
import 'package:myproject/model/body_model.dart';
import 'package:myproject/uitjs/colors.dart';
 class BookDataList extends StatelessWidget{
   final String title;
   final String url;
   final List<BodyModelDataListRecommandbookinfovo> bookListItem;
  const BookDataList({Key key, this.title, this.bookListItem, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1,color: Color(0xFFd9d9d9))),
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>{

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text('主编推荐'),
                      ),
                      Container(
                        width: 280,
                        child: Text('123',textAlign: TextAlign.right,),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 12,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network('http://static.zongheng.com/upload/cover/76/74/767412dfb7262e2e6c30780dd0ef3c95.jpeg',width: 77,height: 99,),
                SizedBox(width: 10,),
                Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('追逐的晒蔫'),
                      SizedBox(height: 10,),
                      Text('开九窍，战流氓，泡美女，打造豪门,开九窍，战流氓，泡美女，打造豪门',
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:TextStyle(color:MyColors.textBlack9,fontSize: 13,height: 1.5,),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Expanded(
                              child: Text('nihao',style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                            ),
                          ],
                      )
                    ],
                  ) ,
                ),


              ],
            ),
            Row(
              children: <Widget>[
                Text('789')
              ],
            ),
          ],
      ),
    );
  }
//  _itmes(BuildContext context){
//    if(bookListItem==null){
//      return null;
//    }
//    List<Widget> items=[];
//    bookListItem.forEach((model)=>{
//
//    });
//  }
//  Widget _items(BuildContext context,model){
//    return GestureDetector(
//      onTap: ()=>{
//
//      },
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Image.network('',width: 77,height: 99,),
//          SizedBox(width: 12,),
//          Container(
//            child: Text('大侠你好',style: TextStyle(color: MyColors.textBlack3,fontSize: 16),),
//          )
//        ],
//      ),
//    );
//  }

 }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/model/book_home.dart';
import 'package:myproject/uitjs/colors.dart';
class LocalNav extends StatelessWidget{
  final List<BookHomeDataIconBookConfig> bookIcon;
  const LocalNav({Key key, this.bookIcon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      padding: EdgeInsets.fromLTRB(18, 0, 18, 10),
      child:_items(context) ,
    );
  }
  _items(BuildContext context){
    if(bookIcon==null){
      return null;
    }
    List<Widget> item=[];
    bookIcon.forEach((model)=>{
      item.add(items(context, model))
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:item,
    );
  }
  items(BuildContext context,model){
    return GestureDetector(
      onTap: ()=>{

      },
      child: Column(
        children: <Widget>[
          Image.network(model.imageUrl,width:40 ,height:40 ,),
          SizedBox(height: 8,),
          Text(model.name,style: TextStyle(fontSize: 14,color: MyColors.textBlack9),)
        ],
      ),
    );
  }

}
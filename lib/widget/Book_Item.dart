import 'package:flutter/material.dart';
import 'package:myproject/model/book_home.dart';
import 'package:myproject/uitjs/colors.dart';
class BookItem extends StatelessWidget{
  final List<BookHomeDataEverybodyLook> bodyLooks;
  const BookItem({Key key, this.bodyLooks}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
            items(context),
        ],
      ),
    );
  }
  items(BuildContext context){
    List<Widget> item=[];
    if(bodyLooks.length==0){
      return Container();
    }else{
      for(var i=0;i<bodyLooks.length;i++){
        item.add(itemsList(context,bodyLooks[i]));
      }
      return Column(children: item,);
    }

  }
  itemsList(BuildContext context,model){
    return Column(
      children: <Widget>[
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                model.cover,
                width: 107,
                height: 127,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(model.title),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      model.longIntro,
                      style: TextStyle(
                          fontSize: 14, color: MyColors.textBlack6, height: 1.5),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            model.author,
                            style:
                            TextStyle(fontSize: 12, color: MyColors.textBlack9),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                          decoration: BoxDecoration(
                            border: new Border.all(
                                width: 1.0,
                                color: MyColors.textBlack9,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Text(
                            model.cat.name,
                            style:
                            TextStyle(fontSize: 12, color: MyColors.textBlack9),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          )
      ],
    );
  }

}
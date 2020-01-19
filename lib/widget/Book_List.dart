import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/uitjs/colors.dart';
import 'package:myproject/model/book_home.dart';

class BookList extends StatelessWidget {
  final List<BookHomeDataHomeRecommand> boyData;
  final List<BookHomeDataHomeRecommandBookConfig> boyDataList;
  const BookList({Key key, this.boyData, this.boyDataList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => {print(1)},
            child: Row(
              children: <Widget>[
                Expanded(
                  child: title(),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: MyColors.textBlack9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: firstBook(),
            onTap: () => {print(1)},
          ),
          SizedBox(
            height: 15,
          ),
          items(context),
        ],
      ),
    );
  }

  title() {
    if (boyData.length == 0) {
      return Container(
        width: 0,
        height: 0,
        child: Text(''),
      );
    } else {
      return Text(
        boyData[0].name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      );
    }
  }

  firstBook() {
    if (boyDataList.length == 0) {
      return Container(
        width: 0,
        height: 0,
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            boyDataList[0].imageUrl,
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
                Text(boyDataList[0].name),
                SizedBox(
                  height: 10,
                ),
                Text(
                  boyDataList[0].bookInfo.shortIntro,
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
                        boyDataList[0].bookInfo.author,
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
                        boyDataList[0].bookInfo.cat.name,
                        style:
                            TextStyle(fontSize: 12, color: MyColors.textBlack9),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }
  }

  items(BuildContext context) {
    if (boyDataList.length == 0) {
      return Container(width: 0,height: 0,);
    } else {
      List<Widget> item = [];
      for (var i = 1; i < 4; i++) {
        item.add(itemList(context, boyDataList[i]));
      }
      return Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.spaceBetween,children:item,);
    }
  }
  itemList(BuildContext context, model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network(
          model.imageUrl,
          width: 107,
          height: 127,
        ),
        Container(
          width: 100,
          padding: EdgeInsets.fromLTRB(6, 8, 0, 0),
          child: Text(model.name,maxLines: 1,overflow: TextOverflow.clip,),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(6, 4, 0, 4),
          child: Text(model.bookInfo.author,
              style: TextStyle(fontSize: 12, color: MyColors.textBlack9)),
        ),
      ],
    );
  }
}

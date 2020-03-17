import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/model/book_detail.dart';
import 'package:myproject/model/book_list.dart';
import 'package:myproject/model/search_keywords.dart';
import 'package:myproject/uitjs/colors.dart';
import 'package:http/http.dart' as http;
import 'Home_Page.dart';
class SearchList extends StatefulWidget {
  @override
  _SearchList createState()=>_SearchList();
  
}
class _SearchList extends State<SearchList>{
  FocusNode blankNode = FocusNode();
  TextEditingController searchNameController = TextEditingController();
  List<String> bookList=[];
  List<BookDetailDataBookListByName> bookDetailList=[];
  List<BookListDataBookListByVague> bookListData=[];
  bool isShow=false;
  bool isList=true;
  bool isShowList=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(children: <Widget>[
                Icon(Icons.search,color:Colors.grey,size: 22,),
                Expanded(flex:1,child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 0, 5, 0),
                  child: TextField(
                    controller: searchNameController,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      border:InputBorder.none,
                      hintText: '搜索书名或者作者',
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                    onChanged: strText,//监听输入款文本内容变化
                    onEditingComplete:subText, //监听键盘回车事件
                  ),
                ),),
                GestureDetector(
                  onTap: ()=>{
                    clearText()
                  },
                  child: Icon(Icons.cancel,color: Colors.grey,size:22,),
                ),
                GestureDetector(
                  onTap: ()=>{
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()))
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text('取消'),
                  ),
                )
              ],),
            ),
            Visibility(
              visible: isShow,
              child: Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: bookList?.length ?? 0,
                    itemBuilder: (BuildContext context, int position) {
                      return Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10,5,10,5),
                        decoration: BoxDecoration(
                            border:Border(bottom: BorderSide(width: 1,color: MyColors.dividerColor))
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search,color:MyColors.textBlack9,size: 26,),
                            SizedBox(width: 5,),
                            Expanded(
                              child: GestureDetector(
                                onTap:()=>clickText(position),
                                child: Text(bookList[position],style: TextStyle(color: MyColors.textBlack9,fontSize: 14),),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Visibility(
              visible:isList,
              child: Expanded(
                child: ListView.builder(itemCount:bookDetailList?.length ?? 0,itemBuilder:(BuildContext context, int position){
                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(bookDetailList[position].bookCover,width: 107,height: 127,),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(bookDetailList[position].bookName,),
                              SizedBox(height: 8,),
                              Text(bookDetailList[position].bookShortIntro,style: TextStyle(
                                  fontSize: 14, color: MyColors.textBlack6, height: 1.5),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 20,),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(bookDetailList[position].bookAuthor,style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5,2,5,2),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: new Border.all(
                                            width: 1.0,
                                            color: MyColors.textBlack9,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Text(bookDetailList[position].catName,style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Visibility(
              visible:isShowList,
              child: Expanded(
                child: ListView.builder(itemCount:bookListData?.length ?? 0,itemBuilder:(BuildContext context, int position){
                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(bookListData[position].bookCover,width: 107,height: 127,),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(bookListData[position].bookName,),
                              SizedBox(height: 8,),
                              Text(bookListData[position].bookShortIntro,style: TextStyle(
                                  fontSize: 14, color: MyColors.textBlack6, height: 1.5),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 20,),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(bookListData[position].bookAuthor,style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(5,2,5,2),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: new Border.all(
                                            width: 1.0,
                                            color: MyColors.textBlack9,
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Text(bookListData[position].catName,style: TextStyle(fontSize: 12,color: MyColors.textBlack9),),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        )
      )
    );
  }
  strText(String str){
   if(str.length==0){
      setState(() {
        bookList=null;
        isShow=false;
        isList=true;
        bookListData=null;
        isShowList=false;
      });
      return;
   }else{
     Future<SearchKeywordsEntity> fetchPost() async{
       final response=await http.get('http://api.book.lieying.cn/Book/autoComplete?query='+str);
       final result=json.decode(response.body);
       return new SearchKeywordsEntity.fromJson(result) ;
     }
     fetchPost().then((SearchKeywordsEntity value){
       bookList=value.keywords;
       setState(()=>{
         bookList=value.keywords,
         isShow=true,
         isList=false,
         isShowList=false,
       });
     });
   }

  }
  clickText(int position) {
    searchNameController.text=bookList[position];
    Future<BookDetailEntity> fetchPost() async{
      final response=await http.get('http://api.book.lieying.cn/Home/Book/searchBook?query='+bookList[position]);
      final result=json.decode(response.body);
      return new BookDetailEntity.fromJson(result) ;
    }
    fetchPost().then((BookDetailEntity value) {
      setState(() {
        bookDetailList=value.data.bookListByName;
      });
    });
    if(searchNameController.text.length>0){
      setState(() {
        isShow=false;
        bookList=null;
        bookListData=null;
        isShowList=false;
        isList=true;
      });
    }
    if(bookDetailList.length==0){
      isList=false;
    }
    FocusScope.of(context).requestFocus(blankNode);//收回键盘
  }
  clearText() {
    setState(() {
      bookList=null;
      bookListData=null;
      isShowList=false;
      isShow=false;
      isList=true;
    });
    searchNameController.clear();
  }
  subText(){
    print(searchNameController.text);
    Future<BookListEntity> fetchPost() async{
      final response=await http.get('http://api.book.lieying.cn/Home/Book/searchBookVague?page=1&query='+searchNameController.text+'&limit=50');
      final result=json.decode(response.body);
      print(result);
      return new BookListEntity.fromJson(result) ;
    }
    fetchPost().then((BookListEntity value) {
      setState(() {
        bookListData=value.data.bookListByVague;
        isShowList=true;
        isShow=false;
        isList=false;
        bookList=null;
        bookDetailList=null;
      });
    });
    searchNameController.clear();
    FocusScope.of(context).requestFocus(blankNode);//收回键盘
  }

}


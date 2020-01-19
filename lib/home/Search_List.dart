import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
 

  @override
  _SearchList createState()=>_SearchList();
  
}
class _SearchList extends State<SearchList>{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.search),

        ],
        ),
    );
  }

}
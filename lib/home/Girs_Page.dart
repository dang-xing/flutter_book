import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myproject/uitjs/colors.dart';
class GrirsPage extends StatefulWidget{
  @override
  _GrirsPage createState()=>_GrirsPage();
}
class _GrirsPage extends State<GrirsPage>{
  List _imgUrl=[
    'http://plf-bucket.zhuishushenqi.com/management/images/20191016/bb2cc6ae6436405fa982c3b813870316.jpg',
    'http://plf-bucket.zhuishushenqi.com/management/images/20191016/bb2cc6ae6436405fa982c3b813870316.jpg',
    'http://plf-bucket.zhuishushenqi.com/management/images/20191016/bb2cc6ae6436405fa982c3b813870316.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context,position)
    {
      if (position == 0) {
        return Container(
          height: 180,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Swiper(
            itemCount: _imgUrl.length,
            loop: true,
            autoplay: true,
            itemBuilder:(BuildContext context,int index){
//              return Image.network(
//                _imgUrl[index],
//                fit: BoxFit.fill,
//              );
                return Container(
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new NetworkImage(_imgUrl[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                );
            },
            autoplayDisableOnInteraction: true,
            onTap: (index) {

            },
            viewportFraction: 0.9,
            scale: 0.93,
            outer: true,
            pagination: new SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                activeColor: MyColors.textBlack6,
                color: MyColors.paginationColor,
                size: 5,
                activeSize: 5,
              ),
            ),
          ),
        );
      }
      return InkWell(
        child: Container(
          child: Row(
            children: <Widget>[
              Text('123')
            ],
          ),
        ),
      );
    });
  }

}


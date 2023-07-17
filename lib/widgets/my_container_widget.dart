import 'package:flutter/material.dart';


class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({
    required this.subTitle ,
    required this.title ,
    required this.color,
    this.isColorWhite = true ,
    super.key,
  });


  final Color color ;
  final String title  ;
  final String subTitle ;
final bool isColorWhite ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 4.0),
      width: MediaQuery.of(context).size.width/2.4,
      height: MediaQuery.of(context).size.height/8.5,
      decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(28.0)
      ),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style:  TextStyle(fontSize: 24.0 , color:isColorWhite?Colors.white:Colors.black , fontWeight: FontWeight.bold),),
            Text(subTitle, style:  TextStyle(fontSize: 12.0 ,color:isColorWhite?Colors.white:Colors.black , fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

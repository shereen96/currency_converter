import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SecondHalf extends StatelessWidget{
  final String result;
  SecondHalf({this.result});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(child: Center(
      child: Text(result,style: TextStyle(fontSize: 50),),
    ),);
  }
}
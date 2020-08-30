import 'package:curency_converter/currency_project/ui/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'wac flutter app',
        home:
        Builder(builder: (context) {
          Size size = MediaQuery.of(context).size;
          ScreenUtil.init(context);
          ScreenUtil.init(context, width: size.width, height:size.height);
          return  MainScreen();
        },)
        
          
            

        
        );
  }
}
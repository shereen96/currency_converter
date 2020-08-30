import 'package:curency_converter/currency_project/ui/widgets/currency_picker.dart';
import 'package:curency_converter/currency_project/ui/widgets/currency_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FirstHalf extends StatelessWidget {
  final Function brokerFun1;
  final Function brokerFun2;
  final Function textFieldFunction;
  FirstHalf({this.brokerFun1,this.brokerFun2,this.textFieldFunction});
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.redAccent, Color(0xFFFF9795)],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            stops: [0, 0.9]),
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: CurrencyPicker(getSelectedIndexFunction: brokerFun1,)),
          Expanded(child: CurrencyTextField(getText: textFieldFunction,)),
          Expanded(child: CurrencyPicker(getSelectedIndexFunction: brokerFun2,)),
        ],
      ),
    ));
  }
}

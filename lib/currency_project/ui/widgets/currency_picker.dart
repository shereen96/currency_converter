import 'package:curency_converter/currency_project/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrencyPicker extends StatelessWidget{
  final Function getSelectedIndexFunction;
  CurrencyPicker({this.getSelectedIndexFunction});
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
    CupertinoPicker(itemExtent: 30, 
    magnification: 1.3,
    onSelectedItemChanged: (int x)=>getSelectedIndexFunction(x), 
    children: currencies.map((e) => Text(e)).toList());
  }
}
import 'package:curency_converter/currency_project/constants.dart';
import 'package:curency_converter/currency_project/ui/screens/first_half_hcreen.dart';
import 'package:curency_converter/currency_project/ui/screens/second_hald_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MainScreen extends StatefulWidget{


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
String fromCurrency = 'USD';

String toCurrency = 'USD';

double value = 1.0;

String result = '0';

 getFirstPickerSelectedItem(int index){
   String selectedCurrency = currencies[index];
   fromCurrency= selectedCurrency;
   setState(() {
     calculateConverter();
   });
 }

  getSecondPickerSelectedItem(int index){
   String selectedCurrency = currencies[index];
   toCurrency= selectedCurrency;
   setState(() {
     calculateConverter();
   });
 }

 getTextFiledValue(double value){
  this.value = value;
  setState(() {
    calculateConverter();
  });
 }

 calculateConverter(){
    result =  '${value*currenciesVlauesMap[fromCurrency]/currenciesVlauesMap[toCurrency]}';

 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text('Currency Converter'),),
    body:Column(children: <Widget>[
      FirstHalf(brokerFun1: getFirstPickerSelectedItem,
      brokerFun2: getSecondPickerSelectedItem,
      textFieldFunction: getTextFiledValue,),
      SecondHalf(result: result,)
    ],));
  }
}
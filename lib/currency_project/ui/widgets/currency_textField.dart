import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget{
  final Function getText;
  CurrencyTextField({this.getText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      onChanged: (value) => getText(double.parse(value)),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        fillColor: Color(0x55FFFFFF),
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
      ),
    );
  }
}
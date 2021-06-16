import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculator_screen.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          leading:IconButton(
            onPressed: (){
              exit(0);
            },
            icon: Icon(Icons.close,color: Colors.white,),
          ),
        ),
        body:CalculatorScreen(),
      ),
    );
  }
}

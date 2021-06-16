import 'package:calculator/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/utilities/number_button.dart';
import 'package:calculator/calculator_brain.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String num1 = '', num2 = '', opt = '',result ='';
  void setNumbers(String num) {
    setState(() {
      if (opt != '') {
        num2 += num;
      } else {
        num1 += num;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.teal,
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(child: Text('$num1 $opt $num2',style: kTextStyleMain,)),
                      ),
                    Text(result,style: kTextStyleMain,),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberButton(
                        number: 'C',
                        onTap: () {
                          setState(() {
                            num1 = '';
                            num2 = '';
                            opt = '';
                            result = '';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                        number: '/',
                        onTap: (){
                          setState(() {
                            opt='/';
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                        number: '*',
                        onTap: (){
                          setState(() {
                            opt ='*';
                          });

                        },
                      ),
                    ),
                    Expanded(
                      child: NumberButton(
                        number: '-',
                        onTap: (){
                          setState(() {
                            opt ='-';
                          });

                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: NumberButton(
                                          number: '7',
                                          onTap: () {
                                            setNumbers('7');
                                          }),
                                    ),
                                    Expanded(
                                      child: NumberButton(
                                        number: '8',
                                        onTap: () {
                                          setNumbers('8');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: NumberButton(
                                        number: '9',
                                        onTap: () {
                                          setNumbers('9');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: NumberButton(
                                        number: '4',
                                        onTap: () {
                                          setNumbers('4');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: NumberButton(
                                        number: '5',
                                        onTap: () {
                                          setNumbers('5');
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: NumberButton(
                                        number: '6',
                                        onTap: () {
                                          setNumbers('6');
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: NumberButton(
                                number: '+',
                                onTap: (){
                                  setState(() {
                                    opt ='+';
                                  });
                                },
                          )),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: NumberButton(
                                          number: '1',
                                          onTap: () {
                                            setNumbers('1');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: NumberButton(
                                          number: '2',
                                          onTap: () {
                                            setNumbers('2');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: NumberButton(
                                          number: '3',
                                          onTap: () {
                                            setNumbers('3');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: NumberButton(
                                          number: '0',
                                          onTap: () {
                                            setNumbers('0');
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: NumberButton(
                                          number: '.',
                                          onTap: () {
                                            setNumbers('.');
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: NumberButton(
                                number: '=',
                                onTap: (){
                                  CalculatorBrain brain = CalculatorBrain(var1: double.parse(num1),var2: double.parse(num2),operator: opt);
                                  setState(() {
                                    result = brain.getResult().toString();
                                    num1 ='';
                                    opt ='';
                                    num2 ='';
                                  });

                                },
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

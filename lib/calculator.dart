import 'dart:ui';

import 'package:calcculator/componnent.dart';
import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}
String console = '0';

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'calculator'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '$console',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCalculate('AC', Colors.grey[850]!,Colors.white),
              ButtonCalculate('.', Colors.grey[850]!,Colors.white),
              ButtonCalculate('-/+', Colors.grey[850]!,Colors.white),
              ButtonCalculate('x', Colors.amber[800]!,Colors.black),

            ],
          ),


          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCalculate('7', Colors.grey,Colors.black),
              ButtonCalculate('8', Colors.grey,Colors.black),
              ButtonCalculate('9', Colors.grey,Colors.black),
              ButtonCalculate('/', Colors.amber[800]!,Colors.black),

            ],
          ),

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCalculate('4', Colors.grey,Colors.black),
              ButtonCalculate('5', Colors.grey,Colors.black),
              ButtonCalculate('6', Colors.grey,Colors.black),
              ButtonCalculate('-', Colors.amber[800]!,Colors.black),

            ],
          ),

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCalculate('3', Colors.grey,Colors.black),
              ButtonCalculate('2', Colors.grey,Colors.black),
              ButtonCalculate('1', Colors.grey,Colors.black),
              ButtonCalculate('+', Colors.amber[800]!,Colors.black),

            ],
          ),

          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCalculate('0', Colors.grey,Colors.black),
              ButtonCalculate('%', Colors.grey,Colors.black),
              ButtonCalculate('-/+', Colors.grey,Colors.black),
              ButtonCalculate('=', Colors.amber[800]!,Colors.black),

            ],
          ),
        ],
      ),
    );
  }

  int number1 = 0;
  int number2 = 0;
  String operation = '';
  Widget ButtonCalculate (
      String txt , Color btnColor , Color txtColor) {
    return MaterialButton(
      onPressed: (){
        setState(() {
          if (txt == 'AC'){
            console = '';
            number1 = 0 ;
            number2 = 0 ;
          }else if (txt == '%' ){
            number1 = int.parse(console);
            console = (number1/100).toString();
          } else if (txt =='1' ||txt== '2'||txt== '3'||txt== '4'||txt== '5'||txt== '6'||txt== '7'||txt== '8'||txt== '9'||txt== '0'||txt== '.'){
            console += txt  ;
          }else if (txt== '+' || txt== '-' || txt== '/' ||txt== 'x' ){
            number1 = int.parse(console);
            operation = txt;
            // print('$number1 $operation');
            console = '';
          }else if (txt== '=') {
            number2 = int.parse(console);
            // print(number2);
            if (operation == '+') {
              console = (number1 + number2).toString();
            }else if(operation == '-') {
              console = (number1 - number2).toString();
            }else if(operation == '/') {
              console = (number1 / number2).toString();
              number1 = number2 = 0;
            }else if(operation == 'x') {
              console = (number1 * number2).toString();
            }else{
              console = txt;
            }

          }

        });

      },
      shape: CircleBorder(),
      color: btnColor,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 30,
          color: txtColor,
        ),
      ),
    ),
    );

  }

}

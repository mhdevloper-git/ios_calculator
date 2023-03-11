import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';
class Button extends StatelessWidget {
String sign ;
Color colors ;
void fonction;
  Button({
  required this.sign,
     required this.colors ,
    required this.fonction,
});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Container(
          height: 70,
          width: 70,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: colors ,
          ),
          child: Center(
            child: Text(
              sign,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40
              ),
            ),
          ),
        ),
        onPressed: (){
          fonction;

        }
    );
  }
}

List<String> Signs = [
  'AC','%','-/+', 'x',
  '9','8','7', '/',
  '6','5','4', '+',
  '3', '2','1','-',
  '0','.','','=',

];

List<Color> clrs = [
  Colors.amber,
  Colors.amber,
  Colors.amber,
  Colors.amber,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.amber,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.amber,
  Colors.amber,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.amber,
  Colors.amber,
  Colors.amber,
  Colors.amber,
  Colors.amber,


  ];
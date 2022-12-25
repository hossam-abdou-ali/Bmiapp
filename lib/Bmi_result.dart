import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmiResult extends StatelessWidget {

     late bool isMale;
  final  int? result;
  final  int? age;

  bmiResult
      ({
           required this.result,
           required this.age,
           required this.isMale,
        });
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar
      (
      title: Text('Bmi Result'),
    ),
      body: Center(
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(isMale ? 'Gender:(Male)' : 'Gender: (Female)',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)
            ),
            Text(('Result:$result'),style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
            Text(('Age:$age'),style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

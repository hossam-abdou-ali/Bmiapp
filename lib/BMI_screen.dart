import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bmi_result.dart';

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _State();
}

class _State extends State<Bmi> {

  bool isMale = true;
  String male = 'male';
  double height= 120.0;
  int weight=80;
  int age =20;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar
        (
        title: Text('Bmi Calculator'),
      ),
      body:Column(

        children:[

         Expanded(

           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(

              children:
               [
              Expanded(
                  child:
              GestureDetector(
                onTap: ()
                {
                  setState(()
                  {
                    isMale =true;
                  });

                },
                child: Container(
                  decoration: BoxDecoration
                    (
                      borderRadius: BorderRadius.circular(20.0,),

                      color: isMale ?  Colors.blue : Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Image(

                        image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Person_icon_BLACK-01.svg/640px-Person_icon_BLACK-01.svg.png'),
                        height: 90.0,
                        width: 90.0,
                      ),
                      SizedBox(height: 15.0,),
                      Text(('Male'),
                        style:TextStyle(fontSize: 25.0,
                          fontWeight:FontWeight.bold,
                          color: Colors.black,) ,)
                    ],
                  ),
                  ),
              ),
                ),
              SizedBox(width: 45.0,),

              Expanded(
                child: GestureDetector(
                  onTap: ()
                  {
                    setState(()
                  {
                    isMale=false;
                  });
                  },
                  child: Container(
                    decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.circular(20.0,),
                        color: isMale ? Colors.grey:Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                       Image
                         (
                         height: 90.0,
                         width: 90.0,
                           image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/05/Female-icon-2.png?20200401195735')
                       ),
                        SizedBox(height: 15.0,),
                        Text(('Female'),

                          style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,
                            color: Colors.black,) ,

                        )
                      ],
                    ),
                  ),
                ),
              ),

        ],
      ),
           ),
         ),
          ///////////
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.grey
                ),
                child: Column(

                  children: [
                 Text(('Height'),

                 style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,
                  color: Colors.black,)
                  ),
                 Row(

                   mainAxisAlignment: MainAxisAlignment.center,
                   textBaseline: TextBaseline.alphabetic,

                   children:[
                  Text(('${height.round()}'),
                    style:TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold,
                  color: Colors.black,),
                  ),

                    Text(('cm'),
                      style:TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold,
                        color: Colors.black,),
                    ),

                 ]
                 ),
                    Slider(value:height ,
                        min: 60, max: 260,
                        onChanged: (value)
                        {
                          setState(() {
                            height=value;
                            print(height);

                          });
                        })
                  ],

                ),
              ),
            ),
          ),
          /////////////


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(20.0,),
                          color: Colors.grey
                      ),
                      child: Column
                        (
                        children:
                        [
                        Text(('weight'),
                        style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,
                        color: Colors.black,)
                        ),
                          Text
                            ('$weight', style:TextStyle(fontSize: 40.0,
                            fontWeight:FontWeight.bold,
                              color: Colors.black,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'we-',
                                mini: true,
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight--;

                                    });
                                  },
                               child:Icon(Icons.remove),
                              ),
                              SizedBox(width: 15.0,),

                              FloatingActionButton(
                                heroTag: 'we+',
                                mini: true,
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child:Icon(Icons.add),
                              ),
                            ],
                          )



                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(20.0,),
                          color: Colors.grey
                      ),
                      child: Column
                        (
                        children:
                        [
                          Text(('Age'),
                              style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,
                                color: Colors.black,)
                          ),
                          Text
                            (
                            ('$age'),
                            style:TextStyle(fontSize: 40.0,fontWeight:FontWeight.bold,
                              color: Colors.black,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'age-',

                                mini: true,
                                onPressed:
                                    ()
                                {
                                  setState(() {
                                    age--;

                                  });
                                },
                                child:Icon(Icons.remove),
                              ),
                              SizedBox(width: 15.0,),

                              FloatingActionButton(
                                heroTag: 'age+',
                                mini: true,
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child:Icon(Icons.add),
                              ),
                            ],
                          )



                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /////////////

           Container(
             color: Colors.brown,
             height: 50.0,
             width: double.infinity,
             child: MaterialButton(
               onPressed: ()
               {
                 var result = weight/pow(height/ 100,2);
                 print(result.round());
                 Navigator.push(context, MaterialPageRoute
                        (
                       builder:(context)=> bmiResult(
                         age: age,
                         result: result.round(),
                         isMale: isMale,
                       )

                   )
                 );

               },
                 child: Text('Calculate',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)

             ),
           ),
          

    ]
      )
    );
  }
}

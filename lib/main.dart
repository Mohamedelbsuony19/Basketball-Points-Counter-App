import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}
class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => pointsCounterState();
}

class pointsCounterState extends State<pointsCounter> {
  int temeA=0;

  int temeB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Points Counter By Mohamed Sabry')),
          backgroundColor: Colors.orange,
        ),
        body: Column(

            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Teme A', style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('$temeA', style: TextStyle(
                          fontSize: 150,
                        ),
                        ),
                        ElevatedButton(onPressed: (){
                          temeA++;
                          setState(() {

                          });
                        },
                          child: Text('Add 1 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,
                        ),

                        ElevatedButton(onPressed: (){

                          setState(() {
                            temeA += 2 ;
                          });
                        },
                          child: Text('Add 2 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,

                        ),


                        ElevatedButton(onPressed: (){

                          setState(() {
                            temeA += 3 ;
                          });
                        },
                          child: Text('Add 3 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,

                        ),
                      ],

                    ),
                  ),

                  Container
                    (
                    height:500 ,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),

                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Teme B', style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text('$temeB', style: TextStyle(
                          fontSize: 150,
                        ),
                        ),
                        ElevatedButton(onPressed: (){
                          temeB++;
                          setState(() {

                          });
                        },
                          child: Text('Add 1 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,
                        ),

                        ElevatedButton(onPressed: (){

                          setState(() {
                            temeB += 2 ;
                          });
                        },
                          child: Text('Add 2 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,

                        ),


                        ElevatedButton(onPressed: (){

                          setState(() {
                            temeB += 3 ;
                          });
                        },
                          child: Text('Add 3 point',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                          ),),
                          style:ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ) ,

                        ),
                      ],

                    ),
                  ),

                ],
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  temeA=0;
                  temeB=0;
                });
              },
                child: Text('Done',style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                ),),
                style:ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(150, 50)
                ) ,
              )
            ]

        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MyApp());
  
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Center(child: Text('Lottery App')),
        ) ,
        body:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(child: Text('Lottery winning number is 4')),
              const SizedBox(height: 15,),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    color: x==4 ? Colors.tealAccent.withOpacity(0.25): Colors.grey.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: x==4 ?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all,color:Colors.green,size: 35,),
                      SizedBox(
                        height: 14,
                      ),
                      Text('Congratulation you have won the lottery, your number is $x\n', textAlign: TextAlign.center,)

                    ],
                  ):

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Icon(Icons.error,color:Colors.red,size: 35,),
                      SizedBox(
                        height: 14,
                      ),
                      Text('Better luck next time your number is $x\n try again', textAlign: TextAlign.center,)

                    ],
                  ),
                ),
              ),

            ],
          ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(random.nextInt(10).toString());
            x=random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}






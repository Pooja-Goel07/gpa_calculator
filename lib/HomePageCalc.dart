import 'package:flutter/material.dart';

class HomePageCalc extends StatefulWidget {
  const HomePageCalc({super.key});

  @override
  State<HomePageCalc> createState() => _HomePageCalc();
}


class _HomePageCalc extends State<HomePageCalc> {
  String? grade01;
  String? grade02;
  String? grade03;
  String? grade04;
  String? grade05;
  String? grade06;
  String? grade07;
  String? grade08;
  String? grade09;
  String? grade10;
  final List<String> items1 = ['S', 'A', 'B', 'C', 'D', 'E', 'F'];
  double? credits01;
  double? credits02;
  double? credits03;
  double? credits04;
  double? credits05;
  double? credits06;
  double? credits07;
  double? credits08;
  double? credits09;
  double? credits10;
  final List<double> items2 = [1,1.5,2,3,4,5,20];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                const Color.fromARGB(255, 84, 26, 186),
              ], // Gradient colors
              begin: Alignment.topLeft, // Start point of the gradient
              end: Alignment.bottomRight, // End point of the gradient
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 88, 58, 149),
                        border: Border.all(color:const Color.fromARGB(64, 64, 35, 94), width: 3.0,),
                        borderRadius: BorderRadius.circular(25.0),
                        
                      ),
                      margin: const EdgeInsets.all(4.5),
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                        value: grade01,
                        hint: Text("Select Grade",style: const TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                        ),),style: const TextStyle(
                            color: Color.fromARGB(234, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
          
                        items: items1.map((String item) {
                          return DropdownMenuItem<String>(
                            
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            grade01 = newValue;
                          });
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 88, 58, 149),
                        border: Border.all(color:const Color.fromARGB(64, 64, 35, 94), width: 3.0,),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      margin: const EdgeInsets.all(4.5),
                      child: DropdownButton<double>(
                        dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                        underline: SizedBox(),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
          
                        value: credits01,
                        hint: Text("Select Credit",style: const TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                        ),),style: const TextStyle(
                            color: Color.fromARGB(234, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        items: items2.map((double item) {
                          return DropdownMenuItem<double>(
                            value: item,
                            child: Text(item.toString()),
                          );
                        }).toList(),
                        onChanged: (double? newValue) {
                          setState(() {
                            credits01 = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
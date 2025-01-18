import 'package:flutter/material.dart';
import 'dart:math';

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
  final List<double> items2 = [1, 1.5, 2, 3, 4, 5, 20];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("GPA CALCULATOR", style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.w800,),),backgroundColor: Colors.black,centerTitle: true,toolbarHeight: 90,),
          body: Stack(
        children: [
          Container(
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
          ),
          CustomPaint(
            painter: DotPainter(),
            child: Container(),
          ),
          SafeArea(
            child: SingleChildScrollView(child: 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          //borderRadius: BorderRadius.circular(25.0),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade01,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          // borderRadius: BorderRadius.circular(25.0),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits01,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                         // borderRadius: BorderRadius.circular(25.0),
                         borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade02,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade02 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits02,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits02 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade03,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade03 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                         borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits03,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits03 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade04,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade04 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits04,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits04 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                         borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade05,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade05 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits05,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits05 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade06,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade06 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits06,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits06 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade07,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade07 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits07,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits07 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade08,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade08 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits08,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits08 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade09,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade09 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits09,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits09 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: grade10,
                          hint: Text(
                            "Select Grade",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              grade10 = newValue;
                            });
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 88, 58, 149),
                          //Color.fromARGB(255, 88, 58, 149)
                          border: Border.all(
                            color: const Color.fromARGB(64, 64, 35, 94),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25),bottomRight: Radius.circular(25.0)),
                        ),
                        margin: const EdgeInsets.all(4.5),
                        child: DropdownButton<double>(
                          dropdownColor: const Color.fromARGB(255, 88, 58, 149),
                          underline: SizedBox(),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          value: credits10,
                          hint: Text(
                            "Select Credit",
                            style: const TextStyle(
                              color: Color.fromARGB(234, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: const TextStyle(
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
                              credits10 = newValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13,),const SizedBox(height: 13,),
                  const SizedBox(height: 13,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(elevation:20,backgroundColor: const Color.fromARGB(255, 48, 18, 87) ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("CALCULATE", style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),),
                    const SizedBox(height: 13,),const SizedBox(height: 13,),
                  const SizedBox(height: 13,),
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 48, 18, 87),borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text("RESULT",style: TextStyle(color: Colors.white,fontSize: 40),)),
                  ),
                ],
              ),
            ),
            ),
          ),
        ],
      )),
    );
  }
}

class DotPainter extends CustomPainter {
  final Random _random = Random();
  late final List<Offset> dotPositions; // Store constant positions
  late final List<double> dotSizes; // Store constant sizes

  // Constructor: Generate random positions and sizes once
  DotPainter() {
    dotPositions = List.generate(40, (index) {
      double x =
          _random.nextDouble() * 400; // Width of the screen (adjust as needed)
      double y =
          _random.nextDouble() * 800; // Height of the screen (adjust as needed)
      return Offset(x, y);
    });

    dotSizes = List.generate(40, (index) {
      return 1 + _random.nextDouble() * 2; // Dot size range between 1 and 3
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.fromRGBO(
          255, 255, 255, 0.6) // White dot color with transparency
      ..style = PaintingStyle.fill;

    // Draw the constant dots on the canvas with pre-generated positions and sizes
    for (int i = 0; i < dotPositions.length; i++) {
      canvas.drawCircle(dotPositions[i], dotSizes[i],
          paint); // Draw each dot with its fixed position and size
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint since the dots are constant
  }
}
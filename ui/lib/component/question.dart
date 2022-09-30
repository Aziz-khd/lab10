import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/Home.dart';

// ignore: must_be_immutable
class Qus extends StatefulWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.ans,
  });

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  String? ans;

  @override
  State<Qus> createState() => _QusState();
}

class _QusState extends State<Qus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.BBxvYHJltvsSSdh3tk5QYwHaNK?pid=ImgDet&w=600&h=1067&rs=1"))),
      child: ListView(children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 140,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.00e642d2f06db13eeb7ec13cf16c0744?rik=XXN1HMRDMzq6uA&pid=ImgRaw&r=0"))),
          child: Text(
            textAlign: TextAlign.left,
            "${widget.qus_text}",
            style: TextStyle(
                height: 4,
                fontWeight: FontWeight.bold,
                fontFamily: "Flu",
                fontSize: 20,
                color: Colors.red),
          ),
        ),
        Divider(
          height: 50,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.10),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  fixedSize: Size(135, 60),
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.grey,
                            content: Center(
                              child: Text(
                                "good job",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Flu'),
                              ),
                            ),
                          );
                        });
                  });
                },
                child: Text(
                  "${widget.answer_1}",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Flo',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              width: 80,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  fixedSize: Size(100, 60),
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.grey,
                            content: Center(
                              child: Text("wrong answer",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontFamily: 'Flu',
                                      fontWeight: FontWeight.bold)),
                            ),
                          );
                        });
                  });
                },
                child: Text("${widget.answer_2}",
                    style: TextStyle(
                        fontFamily: 'Flo',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.70),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.70),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  fixedSize: Size(110, 60),
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.grey,
                            content: Center(
                              child: Text(
                                "wrong answer",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontFamily: 'Flu',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        });
                  });
                },
                child: Text(
                  "${widget.answer_3}",
                  style: TextStyle(
                      fontFamily: 'Flo',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            SizedBox(
              width: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  fixedSize: Size(120, 60),
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.grey,
                            content: Center(
                              child: Text("wrong answer",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontFamily: 'Flu',
                                      fontWeight: FontWeight.bold)),
                            ),
                          );
                        });
                  });
                },
                child: Text(
                  "${widget.answer_4}",
                  style: TextStyle(
                      fontFamily: 'Flo',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          ],
        ),
        SizedBox(
          width: 100,
        ),
        Divider(
          height: 90,
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(46, 8, 45, 73),
              fixedSize: Size(90, 30),
              shadowColor: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            icon: Icon(Icons.home),
            label: Text("Go to Home page",
                style: TextStyle(color: Colors.black, fontSize: 20))),
        Padding(
          padding: const EdgeInsets.all(20.70),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "${widget.ans}",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
        )
      ]),
    );
  }
}

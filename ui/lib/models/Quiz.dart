import 'package:flutter/material.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(90, 108, 59, 33),
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text(" Short Quiz "),
          ),
          body: TabBarView(children: [
            Qus(
              answer_1: "painful",
              answer_2: "likely",
              answer_3: "favorable",
              answer_4: "slippery",
              qus_text: "Which is a synonym of propitious",
              ans: "Page 1",
            ),
            Qus(
              answer_1: "warlike",
              answer_2: "skilful",
              answer_3: "bloody",
              answer_4: "deadly",
              qus_text: "Which is a synonym of pernicious",
              ans: "Page 2",
            ),
            Qus(
              answer_1: "custody",
              answer_2: "betrayal",
              answer_3: "quality",
              answer_4: "information",
              qus_text: "Which is a synonym of perfidy",
              ans: "Page 3",
            ),
            Qus(
              answer_1: "AbedAlraheem",
              answer_2: "Ahmad",
              answer_3: "Aziz",
              answer_4: "Qusai",
              qus_text: "What is the name of our doctor",
              ans: " Page 4",
            ),
            Qus(
              answer_1: "5",
              answer_2: "10",
              answer_3: "15",
              answer_4: "20",
              qus_text: "Choose the Smallest number",
              ans: "Page 5",
            ),
            Qus(
              answer_1: "The blue whale",
              answer_2: "horse",
              answer_3: "dog",
              answer_4: "cat",
              qus_text: "What is largest animal",
              ans: "Page 6",
            ),
          ]),
        ));
  }
}

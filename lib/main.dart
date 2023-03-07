import 'package:flutter/material.dart';
import 'package:quiz_master/questions.dart';
import 'package:quiz_master/option_card.dart';
import 'package:quiz_master/question_card.dart';
import 'dart:math';

void main() {
  runApp(QuizMaster());
}

class QuizMaster extends StatelessWidget {
  const QuizMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizMaster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int points = 0;
  int n = 0;
  int done = 0;
  int r = 0;
  int temp = 0;
  List tempOptions = ['', '', '', ''];
  List optionColors = [Colors.blue, Colors.blue, Colors.blue, Colors.blue];

  @override
  void initState() {
    super.initState();

    points = 0;
    n = questions.length;
    done = 0;

    optionColors = [Colors.blue, Colors.blue, Colors.blue, Colors.blue];

    temp = r;
    while (r == temp) {
      r = Random().nextInt(n);
    }
    tempOptions = [];
    for (var option in questions[r]['a']) {
      tempOptions.add(option);
    }
    tempOptions.shuffle();
  }

  void nextQuestion() {
    optionColors = [Colors.blue, Colors.blue, Colors.blue, Colors.blue];

    temp = r;
    while (r == temp) {
      r = Random().nextInt(n);
    }
    tempOptions = [];
    for (var option in questions[r]['a']) {
      tempOptions.add(option);
    }
    tempOptions.shuffle();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'QuizMaster',
        )),
        elevation: 12.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
            child: Card(
              color: Colors.white54,
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Text(
                            '$done / $n',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Points: $points',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  QuestionCard(question: questions[r]['q']),
                ],
              ),
            ),
          ),
          OptionCard(
            option: tempOptions[0].toString(),
            colour: optionColors[0],
            onTapFun: () {
              if (tempOptions[0] == questions[r]['a'][0]) {
                optionColors[0] = Colors.green;
                points += 1;
                done += 1;
                setState(() {});
              } else {
                optionColors[0] = Colors.red;
                setState(() {});
              }
            },
          ),
          OptionCard(
            option: tempOptions[1].toString(),
            colour: optionColors[1],
            onTapFun: () {
              if (tempOptions[1] == questions[r]['a'][0]) {
                optionColors[1] = Colors.green;
                points += 1;
                done += 1;
                setState(() {});
              } else {
                optionColors[1] = Colors.red;
                setState(() {});
              }
            },
          ),
          OptionCard(
            option: tempOptions[2].toString(),
            colour: optionColors[2],
            onTapFun: () {
              if (tempOptions[2] == questions[r]['a'][0]) {
                optionColors[2] = Colors.green;
                points += 1;
                done += 1;
                setState(() {});
              } else {
                optionColors[2] = Colors.red;
                setState(() {});
              }
            },
          ),
          OptionCard(
            option: tempOptions[3].toString(),
            colour: optionColors[3],
            onTapFun: () {
              if (tempOptions[3] == questions[r]['a'][0]) {
                optionColors[3] = Colors.green;
                points += 1;
                done += 1;
                setState(() {});
              } else {
                optionColors[3] = Colors.red;
                setState(() {});
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 80.0,
              padding: EdgeInsets.fromLTRB(18.0, 10.0, 8.0, 10.0),
              child: Card(
                child: InkWell(
                  child: Center(
                    child: Text('Exit'),
                  ),
                  onTap: () {},
                ),
                color: Colors.grey,
                elevation: 12.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 80.0,
              padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
              child: Card(
                child: InkWell(
                  child: Center(
                    child: Text('Reset'),
                  ),
                  onTap: () {},
                ),
                color: Colors.grey,
                elevation: 12.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 80.0,
              padding: EdgeInsets.fromLTRB(8.0, 10.0, 18.0, 10.0),
              child: Card(
                child: InkWell(
                  child: Center(
                    child: Text('Next'),
                  ),
                  onTap: () {
                    nextQuestion();
                  },
                ),
                color: Colors.blue,
                elevation: 12.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

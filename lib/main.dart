import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'QuizMaster',
        )),
        elevation: 12.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
      body: Column(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            child: Card(
              child: InkWell(
                child: Center(
                  child: Text('this is a question'),
                ),
                splashColor: Colors.yellow,
                onTap: () {},
              ),
              color: Colors.purpleAccent,
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

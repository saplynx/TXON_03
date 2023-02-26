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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
            child: Card(
              color: Colors.white54,
              elevation: 12.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: Text('3 / 15', style: TextStyle(fontSize: 18.0),),
                        ),
                        Center(
                          child: Text('Points: 5', style: TextStyle(fontSize: 18.0),),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160.0,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 8.0),
                    child: Card(
                      child: Center(
                        child: Text('this is a question'),
                      ),
                      color: Colors.white,
                      //elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          OptionCard(),
          OptionCard(),
          OptionCard(),
          OptionCard(),

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
                    borderRadius: BorderRadius.circular(30.0)
                ),
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
                    borderRadius: BorderRadius.circular(30.0)
                ),
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
                  onTap: () {},
                ),
                color: Colors.blue,
                elevation: 12.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24.0, 5.0, 24.0, 0.0),
      child: Card(
        child: InkWell(
          child: Center(
            child: Text('this is an option'),
          ),
          onTap: () {},
        ),
        color: Colors.blue,
        elevation: 12.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
      ),
    );
  }
}


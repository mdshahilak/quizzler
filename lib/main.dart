import 'package:flutter/material.dart';
import 'quizbrain.dart';
QuizBrain qBrain = QuizBrain();
void main() => runApp(Quizzler());
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score =  [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
               qBrain.getQs(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool crtAns = qBrain.getAns();
                if (crtAns == true){
                  setState(() {
                    score.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                    qBrain.intex();
                  });
                } else{
                  setState(() {
                    score.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                    qBrain.intex();
                  });
                }

              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
             style: TextButton.styleFrom(
               backgroundColor: Colors.red,
             ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
               bool crtAns =qBrain.getAns();
               if (crtAns==false) {
                 setState(() {
                   score.add(
                     Icon(
                       Icons.check,
                       color: Colors.green,
                     ),
                   );
                   qBrain.intex();
                 });
               } else {
                 setState(() {
                   score.add(
                     Icon(
                       Icons.close,
                       color: Colors.red,
                     ),
                   );
                   qBrain.intex();
                 });
               }
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: score
    ),
    ],
    );
  }
}
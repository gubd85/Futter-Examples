import 'package:flutter/material.dart';
import 'package:quizzler/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


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
  QuizPage({Key key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoredList = [];
  QuizzBrain quizz = QuizzBrain();

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    void addCorrectAnswer() {
      scoredList.add(
        Icon(Icons.check, color: Colors.green),
      );
    }

    void addWrongAnswer() {
      scoredList.add(
        Icon(Icons.close, color: Colors.red),
      );
    }

    void changeQuestion() {
      if (quizz.getQuestionObjListLength() - 1 > questionNumber) {
        questionNumber++;
      } else {
        
        Alert(context: context, title: "Quizz finished", desc: "Thanks for enjoy! :)").show();
        questionNumber = 0;
        scoredList = [];
      }

      print("questionNumber: $questionNumber");
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizz.getQuestionText(questionNumber),
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (quizz.getQuestionAnswer(questionNumber)) {
                    addCorrectAnswer();
                  } else {
                    addWrongAnswer();
                  }
                  changeQuestion();
                });
              },
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              color: Colors.green,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  if (!quizz.getQuestionAnswer(questionNumber)) {
                    addWrongAnswer();
                  } else {
                    addCorrectAnswer();
                  }
                  changeQuestion();
                });
              },
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: scoredList,
        )
      ],
    );
  }
}

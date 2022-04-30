import 'question.dart';
class QuizBrain{
  int _qno = 0;
  List<Question> _qBank =[
    Question(q:  'Coffee is a berry-based beverage', a: true),
    Question(q:  'The capital of Australia is Sydney', a: false),
    Question(q: 'The longest river in the world is the Amazon River', a: false),
    Question(q:  'In a regular deck of cards, all kings have a mustache', a: false),
    Question(q: 'There is no English word that rhymes with orange', a: true),
    Question(q: 'The letter ‘A’ is the most commonly used in the English language', a: false),
    Question(q: 'The first living animal sent into space were fruit flies', a: true),
    Question(q: 'Among the letters of the alphabet, only the letter J is not included in the periodic table', a: true)
  ];
  String getQs ( ){
    return _qBank[_qno].qText;
  }
  bool getAns ( ){
    return _qBank[_qno].qAns;
  }
  void intex(){
    _qno++;
  }
}
import 'questions_format.dart';

class QuizBox {
  int _questionCount = 0;
  List<int> _incorrectQuestions = [];

  List<Questions> _questionContainer = [
    Questions(
        questionText: 'The boiling point of water is 100 degree Celsius.',
        questionAnswer: true),
    Questions(
        questionText: 'Is gold the most natural occurring metal on earth?',
        questionAnswer: false),
    Questions(
        questionText: 'A child human has 500 bones.', questionAnswer: false),
    Questions(
        questionText: 'Shark is a type of mammals', questionAnswer: false),
    Questions(
        questionText: 'Planet Pluto is a natural habitat for aliens.',
        questionAnswer: false),
    Questions(
        questionText: 'Sound can travel slower in sand than in air.',
        questionAnswer: true),
    Questions(
        questionText: 'zinc is a chemical symbol for chlorine.',
        questionAnswer: false),
    Questions(questionText: 'Mosquito has 9 legs.', questionAnswer: false),
    Questions(
        questionText: 'The moon revolves around planet Mars.',
        questionAnswer: false),
    Questions(
        questionText: 'All metallic objects are not magnetic.',
        questionAnswer: true),
    Questions(
        questionText: 'The power source of the human cell is the Mitochondria.',
        questionAnswer: true),
    Questions(
        questionText: 'Too much Chocolate is unhealthy for dogs.',
        questionAnswer: true),
    Questions(
        questionText: 'The heaviest gas is not Helium.', questionAnswer: true),
  ];

  void nextQuestion() {
    if (_incorrectQuestions.isNotEmpty) {
      _questionCount = _incorrectQuestions.removeAt(0);
    } else if (_questionCount < _questionContainer.length - 1) {
      _questionCount++;
    }
  }

  String getQuestionText() {
    return _questionContainer[_questionCount].questionText;
  }

  bool getCorrectAnswer() {
    return _questionContainer[_questionCount].questionAnswer;
  }

  bool isFinished() {
    return _questionCount >= _questionContainer.length - 1 &&
        _incorrectQuestions.isEmpty;
  }

  void reset() {
    _questionCount = 0;
    _incorrectQuestions = [];
  }

  void addIncorrectQuestion() {
    if (!_incorrectQuestions.contains(_questionCount)) {
      _incorrectQuestions.add(_questionCount);
    }
  }
}

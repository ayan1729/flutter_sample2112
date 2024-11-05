// class QuizQuestions {
//   const QuizQuestions(this.text, this.answers);
//   final String text;
//   final List<String> answers;

//   List<String> getShuffledAnswers() {
//     final shuffledList = List.of(answers);
//     shuffledList.shuffle();
//     return shuffledList;
//   }
// }

class QuizQuestions {
  const QuizQuestions(this.text, this.answers, this.correctAnswer);
  final String text;
  final List<String> answers;
  final String correctAnswer; // Add this line

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

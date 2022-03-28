class QuizModel {
  String question;
  List<String> optionsList;
  int answer;

  QuizModel(this.question, this.optionsList, this.answer);
}

QuizModel quiz1 = QuizModel("Which is the fastest animal  in the world",
    ["Turtle", "Cheetah", "Rabbit", "Leoprd"], 1);
QuizModel quiz2 = QuizModel(
    "Which of these animal swims in upright position?",
    [
      "Sea Loin",
      "Sea Urchin",
      "Sea Horse",
      "Sea Slug",
    ],
    2);
QuizModel quiz3 = QuizModel("Which is the world largest living fish?",
    ["Manta Ray", "Whale Shark", "Marlin", "Sailfish"], 1);

import 'package:cricketerdetails/quiz_geme/models/quiz_models.dart';
import 'package:cricketerdetails/quiz_geme/quiz_welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizGameScreen extends StatefulWidget {
  const QuizGameScreen(
      {Key? key, required String quizButtonText, required String quizTitle})
      : super(key: key);

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List quizList = [quiz1, quiz2, quiz3];
  QuizModel currentQuiz = quiz1;
  int currentQuizIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                    image: AssetImage("assest/images/bg.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: Column(children: [titleView(), quizView(context)]))));
  }

  Text titleView() {
    return Text(
      "Animal Kingdom Quiz",
      style: GoogleFonts.fredokaOne(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Padding quizView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [questionView(), optionsListView()],
          ),
        ),
      ),
    );
  }

  Padding questionView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        currentQuiz.question,
        style: GoogleFonts.fredokaOne(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  optionTaped(int index) {
    if (currentQuiz.answer == index) {
      setState(() {
        if (currentQuizIndex < (quizList.length - 1)) {
          currentQuizIndex = currentQuizIndex + 1;
          currentQuiz = quizList[currentQuizIndex];
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const QuizGameScreen(
                      quizTitle: "Thank you For Playing",
                      quizButtonText: "Play Again")));
        }
      });
    }
  }

  Container optionsListView() {
    return Container(
      height: 350,
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: currentQuiz.optionsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: GestureDetector(
                onTap: () => optionTaped(index),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white54, width: 1)),
                    child: Text(
                      currentQuiz.optionsList[index],
                      style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 2.0),
                      textAlign: TextAlign.center,
                    )),
              ),
            );
          }),
    );
  }
}

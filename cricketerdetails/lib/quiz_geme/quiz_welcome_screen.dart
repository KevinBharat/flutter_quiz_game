import 'package:cricketerdetails/quiz_geme/quiz_game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizWelcomeScreen extends StatelessWidget {
  final String quizTitle;
  final String quizButtonText;
  const QuizWelcomeScreen(
      {Key? key, required this.quizTitle, required this.quizButtonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.deepPurple,
          image: DecorationImage(
              image: AssetImage("assest/images/bg.jpg"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          children: [
            Text(
              quizTitle,
              style: GoogleFonts.fredokaOne(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(4, 4),
                        blurRadius: 4)
                  ]),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                onPressed: () {
                  /**Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return QuizGameScreen();*
                  }));*/
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizGameScreen(
                                quizTitle: "Animal Kingdom Quiz",
                                quizButtonText: "Start Palying",
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(quizButtonText),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.deepPurple.withOpacity(0.9),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    textStyle: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 2.0)),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class CricktersDetails extends StatefulWidget {
  const CricktersDetails({Key? key}) : super(key: key);

  @override
  State<CricktersDetails> createState() => _CricktersDetailsState();
}

class _CricktersDetailsState extends State<CricktersDetails> {
  int numberofMatchPlayed = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numberofMatchPlayed = 200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Crickters Details"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assest/images/man.png",
                height: 100,
                width: 100,
              ),
              const Divider(height: 40, color: Colors.white38),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Name",
                  style: TextStyle(color: Colors.white70, letterSpacing: 2.0),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Virath Kohli",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Age",
                style: TextStyle(color: Colors.white70, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "30",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Number of Games Piayed",
                style: TextStyle(color: Colors.white70, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "$numberofMatchPlayed",
                style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              numberofMatchPlayed = numberofMatchPlayed + 1;
            });
          },
          backgroundColor: Colors.grey[700],
          child: Icon(
            Icons.add,
          )),
    );
  }
}

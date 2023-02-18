import 'package:flutter/material.dart';
import 'package:flutter_project/models/note-model.dart';
import 'package:flutter_project/widgets/note-row-widget.dart';

import '../controllers/random-number-generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State <HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {

    num rand = getRandomNumber();

    void getNewNum() {
      setState(() {
      rand = getRandomNumber();
      });
    }

/*
    @override
    Widget build (BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text("Märkmik"),),
        extendBody: Center(),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          child: NoteRowWidget(),
          children: [
            Text("Get a random number"),
            Text(rand.toString(), style: TextStyle(fontSize: 18, color: Colors.black54),),
            ElevatedButton(onPressed: getNewNum, child: Text("Press me"),)
          ],
        )),
      );
    }
  }
*/



  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Märkmik"),),
      body: Center(child: Column(
        children: getTestNotes().map((note) => NoteRowWidget(note: note)).toList(),
        )),
    );
  }
}
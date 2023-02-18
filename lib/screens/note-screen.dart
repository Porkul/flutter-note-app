import 'package:flutter/material.dart';
import 'package:flutter_project/models/note-model.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();

}
class _NoteScreenState extends State<NoteScreen> {
  NoteModel note = NoteModel();

  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    note.message = "This is a test message!";
    note.title = "Demo note";
    note.date = DateTime.now();
    note.emoji = ":)";

    titleController.text = note.title;
    messageController.text = note.message;
    //like useState in React
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: titleController,
                maxLines: 10,
                decoration: const InputDecoration(labelText: "Title"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextField(
                  controller: messageController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Your message",
                      hintText: "Tell me yout thoughts"),
                ),)

            ],
        )),
      )
    );
  }

}

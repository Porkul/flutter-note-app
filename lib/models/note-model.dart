class NoteModel {
//   String title = "";
//   String message = "";
//   DateTime date = "";
//   String emoji = "";
    late String title;
    late String message;
    late DateTime date;
    late String emoji;
}

List<NoteModel> getTestNotes(){
    var note1 = NoteModel();
    note1.title = "Title1";
    note1.message = "Test Message";
    note1.date = DateTime.now();
    note1.emoji = ":)";

    var note2 = NoteModel();
    note2.title = "Title2";
    note2.message = "Test Message 2";
    note2.date = DateTime.now();
    note2.emoji = ":(";

    return [note1, note2];
}


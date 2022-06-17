import 'package:flutter/cupertino.dart';
import 'Note.dart';

class NotesOperation extends ChangeNotifier {
  List<Note> _notes = new List<Note>();
  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNode('First Node', 'First Node Description');
  }

  void addNewNode(String title, String description) {
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}

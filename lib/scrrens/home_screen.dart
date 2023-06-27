import 'package:flutter/material.dart';
import 'package:note/models/note_models.dart';
import 'package:note/scrrens/create_note.dart';
import 'package:note/scrrens/widgets/note_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '📒  Keep your Notes !',
          style: TextStyle(
            color: Color.fromARGB(255, 247, 233, 42),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: notes[index],
            index: index,
            onNoteDeleted: onNewNoteDeleted,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  CreateNote(onNewNoteCreated: onNewNoteCreated)));
        },
        backgroundColor: const Color.fromARGB(255, 247, 233, 42),
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  void onNewNoteCreated(Note note) {
    notes.add(note);
    setState(() {});
  }

  void onNewNoteDeleted(int index) {
    notes.removeAt(index);
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:note/models/note_models.dart';
import 'package:note/scrrens/note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard(
      {super.key,
      required this.note,
      required this.index,
      required this.onNoteDeleted});

  final Note note;
  final int index;

  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteView(
                  note: note,
                  index: index,
                  onNoteDeleted: onNoteDeleted,
                )));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              note.title.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 238, 238, 232),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              note.body,
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 175, 187, 193),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ]),
        ),
      ),
    );
  }
}

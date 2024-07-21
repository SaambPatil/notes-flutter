import 'package:flutter/material.dart';
import 'package:todo_app/widgets/mainscreen.dart';
import 'package:todo_app/models/note.dart';
import 'package:todo_app/widgets/neweditmodalscreen.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<Note> noteslist = [];

  void _addNotes() {
    showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewEditNote());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N-List'),
        leading: IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNotes,
        child: const Icon(Icons.add),
      ),
      body: const MainScreen(),
    );
  }
}

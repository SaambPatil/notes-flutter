import 'package:flutter/material.dart';

class NewEditNote extends StatelessWidget {
  const NewEditNote({super.key});

  @override
  Widget build(BuildContext context) {
    var _enteredTitle = '';
    var _enteredNote = '';

    void _saveInputTitle(String inputValue) {
      _enteredTitle = inputValue;
    }

    void _saveInputNote(String inputValue) {
      _enteredNote = inputValue;
    }

    final _titleController = TextEditingController();
    final _noteController = TextEditingController();

    void _saveItem() {
      //TODO: IMPLEMENT LOCAL STORAGE
    }

    return Scaffold(  
      appBar: AppBar(
        title: const Text('Note'), // Replace with 'Edit Note' if editing
        actions: [
          IconButton(
            onPressed: _saveItem,
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              controller: _titleController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextField(
                style: const TextStyle(fontSize: 18),
                controller: _noteController,
                maxLines: null, // Allows multiline input
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your Note',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

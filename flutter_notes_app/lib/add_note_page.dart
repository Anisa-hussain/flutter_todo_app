// add_note_page.dart
import 'package:flutter/material.dart';
class AddNotePage extends StatefulWidget{
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState()=> _AddNotePageState();


}

class _AddNotePageState extends State<AddNotePage>{
  final TextEditingController _controller = TextEditingController();

  void _SaveNote(){
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      Navigator.pop(context,text);
    }
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text( 'Add Note')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller:  _controller,
              decoration: const InputDecoration(
                labelText: 'Enter Your Note',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
             const SizedBox(height: 20),
             ElevatedButton(
              onPressed: _SaveNote , 
              child: const Text('save'))
          ],
        ),


      ),






    );
  }
 
}
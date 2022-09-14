import 'package:flutter/material.dart';
import 'package:odc/presentation/screeens/notes/added_notes.dart';
import 'package:odc/presentation/styles/colors.dart';

import '../../widgets/custom_text_form_field.dart';
import 'notes_screen.dart';

class AddNotesScreen extends StatelessWidget {
   AddNotesScreen({Key? key}) : super(key: key);
  final TextEditingController titlelController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Add Notes',style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomTextFormField(
              controller: titlelController,hintText: 'titlle',),
    SizedBox(height: 25,),TextFormField(
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 60),
        hintText: 'description',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(),
    ),)),
            SizedBox(height: 25,),  ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:  (context) =>AddedNotesScreen()));
              },
              child: const Text(
                'Add',
              ),
            )
          ],

        ),
      ),

    );
  }
}

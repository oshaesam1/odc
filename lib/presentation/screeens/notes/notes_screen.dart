import 'package:flutter/material.dart';
import 'package:odc/presentation/screeens/home/home_screen.dart';
import 'package:odc/presentation/screeens/notes/add_notes.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:snack/snack.dart';

class NotesScreen extends StatelessWidget {
   NotesScreen({Key? key}) : super(key: key);
  var bar = SnackBar(content: AddNotesScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Notes',style: TextStyle(
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[50],

      ),
      body: Center(
        child: Text(
            "There's no data to show",style: TextStyle(
          fontSize: 25
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder:  (context) => AddNotesScreen()
              ));
        },
        child: Icon(Icons.add),

      ),
    );
  }
}

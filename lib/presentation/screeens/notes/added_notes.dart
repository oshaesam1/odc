import 'package:flutter/material.dart';
import 'package:odc/presentation/styles/colors.dart';
import 'package:odc/presentation/views/title_card.dart';

import '../../widgets/custom_text_form_field.dart';
import 'notes_screen.dart';

class AddedNotesScreen extends StatelessWidget {
  AddedNotesScreen({Key? key}) : super(key: key);
  final TextEditingController titlelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(' Notes',style: TextStyle(
            color: Colors.black,fontSize: 30
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: size.height/10,

            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 5,
            childAspectRatio: 2 /2,
            crossAxisSpacing: 5,

            ), itemBuilder: (BuildContext context, int index) {
                return TitleCard(title: 'title',);
            },
            ),
          ),
        )
        ],
      )

    );
  }
}

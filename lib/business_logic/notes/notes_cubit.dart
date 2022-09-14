import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:odc/data/local/sql_helperl.dart';
import 'package:odc/models/notes_model.dart';
import 'package:odc/presentation/screeens/notes/edit_note_screen.dart';
import 'package:odc/presentation/screeens/notes/notes_screen.dart';
import 'notes_state.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  static NotesCubit get(context) => BlocProvider.of(context);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  NotesModel? notesModel;


  String? title;
  String? description;
  String? date;
  int? id;


  String dateNow = DateFormat("hh:mm a      dd/MM/yyyy").format(DateTime.now());


  final GlobalKey<FormState> keyAddNote = GlobalKey<FormState>();
  final GlobalKey<FormState> keyEditNote = GlobalKey<FormState>();




  //use for initialize database
  Future<dynamic> initialize() async{
    HelperSql.db.then((value){
      emit(InitialNotesSuccess());

    }).catchError((onError) {
      emit(InitialNotesError());

    });

  }

  //use for insert in database
  Future<dynamic> insert(BuildContext context) async{
    HelperSql.insertDB(
        {
          "Description": "$description",
          "Title": "$title",
          "Date": "$dateNow",
        }).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
        return NotesScreen();
      }));

      emit(InsertNotesSuccess());
    }).catchError((onError) {

      emit(InsertNotesError());

    });

  }

  //use for delete from database
  Future<dynamic> delete(int id) async{
    HelperSql.deleteDB(id).then((value)
    {
      emit(DeleteNotesSuccess());
    }).catchError((onError)
    {
      emit(DeleteNotesError());
    });

  }

  //use for update in database
  Future<dynamic> update(BuildContext context,int id,String title,String description , String date) async{
    HelperSql.updateDB(id,title,description,date).then((value)
    {
      Navigator.pop(context);
      emit(UpdateNotesSuccess());
    }).catchError((onError)

    {
      emit(UpdateNotesError());

    });

  }

  Future<dynamic> getOneData(BuildContext context,int id,String title, String description , String date) async{
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
    {
      return EditNotesScreen(
        id: id,
        description: description,
        title: title,
      );
    }));

    emit(GetOneRowNotesSuccess());


  }



}

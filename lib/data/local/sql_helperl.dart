import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';

import '../../models/notes_model.dart';


class HelperSql {
  static Database? _db;

  //getter to initialize database if there's no initial database
  static Future<Database?> get db async
  {
    if (_db == null)
    {
      _db = await initialDB();
      return _db;
    }

    else {
      return _db;
    }
  }

  //initialize DB
  static initialDB() async
  {
    io.Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Notes.db");
    print(path);
    var myDB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return myDB;
  }

  //Create DB
  //only one time after creating table
  static _onCreate(Database db, int version) async
  {
    //we can get it from package

    await db.execute(
        'CREATE TABLE Notes(ID INTEGER PRIMARY KEY,Description TEXT NOT NULL,Title TEXT NOT NULL,Date TEXT NOT NULL)');
  }

  //Insert in DB
  //tol mna 3ndy msa7a
  static insertDB(Map<String, dynamic> data) async
  {
    Database? dbClient = await db;
    var result = await dbClient!.insert("Notes", data);
    print(result);
    return result;
  }

  //Delete all of DB
  static deleteDB(int id) async
  {
    Database? dbClient = await db;
    var result = await dbClient!.rawUpdate("DELETE FROM Notes WHERE ID = $id");
    print(result);
    return result;
  }

  //Update in DB
  static updateDB(int id, String title,String description,String date) async
  {
    Database? dbClient = await db;
    var result = await dbClient?.rawUpdate(
        "Update Notes SET Title = '$title', Description = '$description', Date = '$date' Where ID = $id");
    print(result);
    return result;
  }

  //Get only one row in DB by id & title
  static getOneRowDB(int id, String title, String description) async
  {
    Database? dbClient = await db;
    var result = await dbClient!.query("Notes", where: "ID = $id");
    print(result);
    return result;
  }

  //Get all rows in DB
  static getAllRowsDB() async
  {
    List<NotesModel> noteList = [];
    Database? dbClient = await db;
    var result = await dbClient!.query("Notes");
    for (var i in result)
    {
      noteList.add(NotesModel(id: i["ID"],
          description: i["Description"],
          title: i["Title"],
          date: i["Date"]));
    }
    print(noteList);
    return noteList;
  }
}

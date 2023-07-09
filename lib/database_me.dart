import 'dart:io';

import 'package:helloworld/user_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseMe {
  final String _databaseName = 'my_database.db';
  final int _databaseVersion = 1;

  //inisialisai user Table dan nama kolom table
  final String table = 'user';
  final String id = 'id';
  final String name = 'name';
  final String email = 'email';
  final String password = 'password';
  final String createdAt = 'created_at';
  final String updatedAt = 'updated_at';

  //membuat database
  Database? _database;
  //meng inisialaisai database yang dibuat
  Future<Database> database() async {
    //cek apakah database sebelumny uda inisialisasi
    if (_database != null) return _database!;
    // jika belim diiniliasasi maka kita membuat database baru
    _database = await _mydatabase();
    return _database!;
  }

// function mydataabase berfungsi untuk menentukan penyimpana database dimaan jika
// sudah kita jalankan perintah utnuk membbuat database
  Future _mydatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    //untuk mengeksekusi perinta sq;
    return openDatabase(path, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    //MELAKUKAN INISIALISASI DATA BARU SQFLITE dengan database tabel kolom
    await db.execute(
        'CREATE TABLE $table ($id INTEGER PRIMARY KEY, $name TEXT, $email TEXT , $password TEXT, $createdAt TEXT NULL, $updatedAt TEXT NULL)');
  }

  //query select []
  Future<List<UserModel>> all() async {
    final data = await _database!.query(table);
    List<UserModel> result = data.map((e) => UserModel.fromJson(e)).toList();
    return result;
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final query = _database!.insert(table, row);
    return query;
  }
}

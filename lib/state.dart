import 'package:flutter/material.dart';
import 'package:helloworld/create.dart';
import 'package:helloworld/database_me.dart';
import 'package:helloworld/user_model.dart';
import 'package:sqflite/sqlite_api.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  final String title;
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  // disini kita akan melakukan inisialisi database

  DatabaseMe databaseMe = DatabaseMe();

  @override
  void initState() {
    // kita inisilaisai database
    databaseMe.database();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simple App'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) {
                  return CreateScreen();
                }));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: FutureBuilder<List<UserModel>>(builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.length == 0) {
            return Center(
              child: Text('data masih kosong'),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index].name ?? ''),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.green));
        }
      }),
    );
  }
}

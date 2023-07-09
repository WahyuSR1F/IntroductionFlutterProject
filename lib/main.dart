import 'package:flutter/material.dart';
import 'package:helloworld/register.dart';
import 'login.dart';
import 'home.dart';
import 'register.dart';
import 'state.dart';
import 'belajar.dart';
import 'profile.dart';
import 'soal1.dart';

//memmbuat metod jalankan fungsi
void main() {
  runApp(MyApp());
}

//make class MyApp
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List showClass = [Soal1(), Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("would guod"),
          ),
          body: showClass[index],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: ((value) {
                setState(() {
                  index = value;
                });
              }),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ));
  }
}

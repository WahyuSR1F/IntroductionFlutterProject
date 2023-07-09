import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Belajar extends StatelessWidget {
  Belajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget(),
    );
  }
}

//memangil class didalam statefull
class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int constrat_value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$constrat_value", style: TextStyle(fontSize: 24)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        constrat_value--;
                      });
                    },
                    child: Text("kurang", style: TextStyle(fontSize: 24))),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        constrat_value++;
                      });
                    },
                    child: Text("Tambah", style: TextStyle(fontSize: 24))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

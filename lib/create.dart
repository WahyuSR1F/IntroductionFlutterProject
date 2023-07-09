import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('create')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama'),
            TextField(),
            SizedBox(
              height: 15,
            ),
            Text('email'),
            TextField(),
            SizedBox(
              height: 15,
            ),
            Text('password'),
            TextField(),
            SizedBox(
              height: 15,
            ),
            Text('Confirm'),
            TextField(),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}

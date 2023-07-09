import 'package:flutter/material.dart';

class Soal1 extends StatefulWidget {
  const Soal1({super.key});

  @override
  State<Soal1> createState() => _Soal1State();
}

class _Soal1State extends State<Soal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Builder(builder: (context) {
                    return Column(
                      children: [
                        Text(
                          'Hello Wahyu Sahri Rhamadhan',
                          textAlign: TextAlign.start,
                          style: TextStyle(),
                        ),
                      ],
                    );
                  }),
                ),
                Text('Masa Akhir Sekolah Bukanlah Akhir dari segalanya'),
                Text('Jadilah Orang Yang Bermanfaat'),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

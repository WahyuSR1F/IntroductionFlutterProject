import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 120,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 110,
            backgroundImage: AssetImage('assets/img1.jpg'),
          ),
        ),
        Text(
          "WAHYU SAHRI RHAMADHAN",
          style: TextStyle(fontSize: 30),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          child: Column(
            children: [
              Table(
                children: [
                  TableRow(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Nama"),
                        SizedBox(width: 10),
                        Text(" : "),
                        SizedBox(width: 10),
                        Text("Wahyu Sahri Rhamadhan")
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Kelas"),
                        SizedBox(width: 10),
                        Text(" : "),
                        SizedBox(width: 10),
                        Text("2F")
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Alamat"),
                        SizedBox(width: 10),
                        Text(" : "),
                        SizedBox(width: 10),
                        Text("Kembangsri, Ngoro, Mojokerto")
                      ],
                    ),
                  ]),
                  TableRow(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Hobby"),
                        SizedBox(width: 10),
                        Text(" : "),
                        SizedBox(width: 10),
                        Text("Bermain Bola")
                      ],
                    ),
                  ]),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}

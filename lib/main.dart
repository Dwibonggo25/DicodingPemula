import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'anothercountry.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air Pollution app',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text ("Air Polution"),
      ),
      body: SingleChildScrollView (
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      Text(
                        "Selamat Pagi",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Dwi Bonggo Pribadi",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.notification_important),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect (
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                        height: 20,
                        width: 20,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: Container (
                margin: EdgeInsets.all(16),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_alarm,
                            color: Colors.black,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jaksel",
                                style: TextStyle (
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Jakarta, Indonesia",
                                style: TextStyle (
                                    fontSize: 12,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                          Text (
                            "42 AQ US",
                            style: TextStyle (
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.adjust_rounded,
                            color: Colors.grey,
                          ),
                          Text(
                              "24 C",
                            style: TextStyle (
                              fontSize: 12,
                              color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.ac_unit_sharp,
                            color: Colors.grey,
                          ),
                          Text(
                            "57%",
                            style: TextStyle (
                                fontSize: 12,
                                color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.wb_sunny_outlined,
                            color: Colors.grey,
                          ),
                          Text (
                            "Cerah",
                            style: TextStyle (
                                fontSize: 12,
                                color: Colors.black
                            ),
                          ),
                          Icon(
                            Icons.agriculture_outlined,
                            color: Colors.grey,
                          ),
                          Text(
                            "13 Km / H",
                            style: TextStyle (
                                fontSize: 12,
                                color: Colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20, right: 16),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informasi Penting",
                    style: TextStyle (
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    "1. Kualitas udara saat ini bagus",
                    style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                    ),
                  ),
                  Text(
                    "2. Arus lalu lintas tidak begitu padat, sehingga polusi tidak terlau banyak",
                    style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Container (
              margin: EdgeInsets.all(16),
              child: Column (
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CountryPage();
                      }));
                    },
                    child: Text ("Lihat Kota Lainnya >>"),
                    padding: EdgeInsets.all(4),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}


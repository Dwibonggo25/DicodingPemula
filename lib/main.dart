import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String language;
  String _email = '';
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Farm house",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.only(top: 16.0),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: <Widget> [
                      Icon(Icons.calendar_today),
                      Text("Open EveryDay"),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.timelapse),
                      Text("09.00 - 20.00"),
                    ],
                  ),
                  Column(
                    children: <Widget> [
                      Icon(Icons.money_off),
                      Text("Rp. 25.000"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect (
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect (
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect (
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
                child: Text ("Tekan"),
                padding: EdgeInsets.all(4),
                onPressed: (){
                }),
            FlatButton(
                onPressed: () {

                },
                color: Colors.blue,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                child: Text (
                  "Tombol",
                  style: TextStyle(fontSize: 12),
                )
            ),
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Maksimal 20',
              onPressed: (){

              },
            ),
            DropdownButton<String>(
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'Dart',
                    child: Text('Dart'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Kotlin',
                    child: Text('Kotlin'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Swift',
                    child: Text('Swift'),
                  ),
                ],
                value: language,
                hint: Text('Select Language'),
                onChanged: (String value){
                  setState(() {
                    language = value;
                  });
                }),
            TextField(
              onChanged: (String value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            Switch(
                value: lightOn,
                onChanged: (bool value){
                  lightOn = value;
                }),
            Column(
              children: [
                ListTile(
                  leading: Radio<String>(
                    value: 'Dart',
                    groupValue: language,
                    onChanged: (String value) {
                      setState(() {
                        language = value;
                      });
                    },
                  ),
                  title: Text('Dart'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Swift',
                    groupValue: language,
                    onChanged: (String value) {
                      setState(() {
                        language = value;
                      });
                    },
                  ),
                  title: Text('Swift'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Kotlin',
                    groupValue: language,
                    onChanged: (String value) {
                      setState(() {
                        language = value;
                      });
                    },
                  ),
                  title: Text('Kotlin'),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Checkbox(
                    value: lightOn ,
                    onChanged: (bool value) {
                      lightOn = value;
                    },
                  ),
                  title: Text('Agree / Disagree'),
                )
              ],
            ),
            Center(
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.network(
                          'https://picsum.photos/200/300',
                          width: 200,
                          height: 200,)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/android.jpg',
                          width: 200,
                          height: 200,)
                      ],
                    ),
                  ],
                )
            ),
          ],
        ),
      )
    );
  }
}


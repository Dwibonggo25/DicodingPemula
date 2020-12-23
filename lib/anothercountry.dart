import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<CountryPage> {

  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var dataKota = List <CountryData>() ;
  var _cityController = TextEditingController();
  var _detailCityControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar (
        title: Text ("Kota Lainnya"),
      ),
      body: SingleChildScrollView (
        child: Column (
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column (
                children: [
                  TextField(
                    controller: _cityController,
                    decoration: InputDecoration (
                      hintText: "Kota",
                    ),
                  ),
                  TextField(
                    controller: _detailCityControler,
                    decoration: InputDecoration (
                      hintText: "Detail Kota",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: RaisedButton(
                      onPressed: () {
                        var city = _cityController.text.trim();
                        var detailCity = _detailCityControler.text.trim();
                        if (city.isEmpty) {
                          _scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              content: Text("Kota Tidak Boleh Kosong"),
                            ),
                          );
                        }else if (detailCity.isEmpty) {
                          _scaffoldKey.currentState.showSnackBar(
                            SnackBar(
                              content: Text("Detail Kota Tidak Boleh Kosong"),
                            ),
                          );
                        }else {
                          setState(() {
                            _cityController.clear();
                            _detailCityControler.clear();
                            dataKota.add(CountryData(city, detailCity));
                          });
                        }
                      },
                      child: Text ("Tambahkan Kota"),
                      padding: EdgeInsets.all(4),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.all(16),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        var data = dataKota[index];
                        return Card(
                          child: InkWell (
                            splashColor: Colors.blue.withAlpha(50),
                            child: Container (
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              margin: EdgeInsets.all(16),
                              height: 50,
                              child: Column (
                                children: [
                                  Text (
                                    data._country,
                                    style: TextStyle (
                                        color: Colors.white,
                                        fontSize: 12
                                    ),
                                  ),
                                  Text (
                                    data._detailCity,
                                    style: TextStyle (
                                        color: Colors.white,
                                        fontSize: 12
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        );
                      },
                      itemCount: dataKota.length,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class CountryData {
  String _country;
  String _detailCity;

  CountryData (this._country, this._detailCity);

  set country (String value) {
    _country = value;
  }

  String get country => _country;

  set detailCity (String value) {
    _detailCity = value;
  }

  String get detailCity => _detailCity;
}


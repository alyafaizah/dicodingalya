import 'package:dicodingalya/pages/start.dart';
import 'package:flutter/material.dart';

class Ongkir extends StatefulWidget {
  @override
  _OngkirState createState() => _OngkirState();
}

class _OngkirState extends State<Ongkir> {
  //variabel
  String _newValue = "Surabaya";
  double _result = 0;
  //variabel lain
  var listItem = [
    "Surabaya",
    "Malang",
    "Bandung",
    "Bogor",
    "Jogja",
    "Semarang",
    "Solo",
    "Denpasar"
  ];
  List<String> listViewItem = [];

  void konversi() {
    //perhitungan ongkir
    setState(() {
      print(listViewItem.length);
      if (_newValue == "Surabaya")
        _result = 21000;
      else if (_newValue == "Malang")
        _result = 25000;
      else if (_newValue == "Bandung")
        _result = 12000;
      else if (_newValue == "Bogor")
        _result = 14000;
      else if (_newValue == "Jogja")
        _result = 23000;
      else if (_newValue == "Semarang")
        _result = 27000;
      else if (_newValue == "Solo")
        _result = 25000;
      else
        _result = 37000;
      listViewItem.add("Postage to $_newValue = IDR $_result  ");
    });
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:
            Colors.brown, 
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        StartPage() 
                    ),
              );
            },
          ),
          title: Text(
            'Check Postage',
            style: TextStyle(
              fontFamily: 'Quantico',
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButton<String>(
                iconEnabledColor: Colors
                    .brown, 
                dropdownColor: Colors.grey, 
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue, 
                onChanged: dropdownOnChanged,
                isExpanded: true, 
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, 
                  children: [
                    Text(
                      "Postage",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      _result.toStringAsFixed(1), 
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              ),
              Container(
                width: 500,
                child: RaisedButton(
                    textColor:
                        Colors.white, 
                    onPressed: konversi,
                    color: Colors.brown.shade200, 
                    child: Text(
                      "Check",
                    )),
              ),
              Container(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "Your history postage",
                  style:
                      new TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listViewItem.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        listViewItem[index],
                        style: new TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

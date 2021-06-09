
import 'package:dicodingalya/pages/start.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown, //memberi warna tema brown
      ),
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
                          StartPage() // untuk kembali ke halaman home
                      ),
                );
              },
            ),
            title: Text(
              'Bomb in Products',
              style: TextStyle(
                fontFamily: 'Quantico',
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(1),
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(children: [
                      new Image.asset(
                        'images/1.jpg',
                        width: 120, //memberi ukuran lebar gambar untuk sampul
                        height: 115,
                      ),
                      new Text("Rosa Pendant"),
                      new Text("550.000"),
                      new Text("4.3/5"),
                    ]),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/2.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Poet Heart"),
                        new Text("750.000"),
                        new Text("4.5/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/3.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Ruby Crown"),
                        new Text("350.000"),
                        new Text("4.7/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/4.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Northern Ring"),
                        new Text("400.000"),
                        new Text("4.7/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/5.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Siren Ring"),
                        new Text("750.000"),
                        new Text("4.5/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/6.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Moon star"),
                        new Text("475.000"),
                        new Text("4.9/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/7.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Saturn"),
                        new Text("450.000"),
                        new Text("4.8/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/8.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Andrea Star"),
                        new Text("850.000"),
                        new Text("4.5/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/9.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Sterling"),
                        new Text("650.000"),
                        new Text("4.9/5"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(0),
                  child: new Card(
                    child: new Column(
                      children: [
                        new Image.asset(
                          'images/10.jpg',
                          width: 120, //memberi ukuran lebar gambar untuk sampul
                          height: 115,
                        ),
                        new Text("Diamond Hoop"),
                        new Text("850.000"),
                        new Text("4.6/5"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

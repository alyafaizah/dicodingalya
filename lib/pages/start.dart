import 'package:dicodingalya/pages/catalog.dart';
import 'package:dicodingalya/pages/ongkir.dart';
import 'package:dicodingalya/pages/signin.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //menghilangkan debug banner
        theme: ThemeData(
          primarySwatch: Colors.brown, //memberi warna tema brown
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Bomb Jewelry",
              style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.bold), //agar judul tampilan bold
            ),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, //agar widget berada di tengah
              children: [
                Row(
                  children: [
                    Image.asset(
                      //mengambil gambar pada asset yg ada di flutter
                      'images/j4.png',
                      width: 120, //memberi ukuran lebar gambar untuk sampul
                      height: 130, // memberi ukuran tinggi gambar
                    ),
                    Image.asset(
                      'images/j1.png',
                      width: 120,
                      height: 130,
                    ),
                    Image.asset(
                      'images/j6.png',
                      width: 120,
                      height: 130,
                    ),
                  ],
                ),
                SizedBox(height: 10), //memberi jarak antar row
                Row(
                  children: [
                    Image.asset(
                      'images/j3.png',
                      width: 120,
                      height: 130,
                    ),
                    Image.asset(
                      'images/j5.png',
                      width: 120,
                      height: 130,
                    ),
                    Image.asset(
                      'images/j2.png',
                      width: 120,
                      height: 130,
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(top: 30)),
                RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Catalog()),
                      );
                    },
                    color: Colors.brown.shade300,
                    textColor: Colors.white,
                    child: Text("Bomb in Products")),
                RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Daftar()),
                      );
                    },
                    color: Colors.brown.shade300,
                    textColor: Colors.white,
                    child: Text(
                      "Join with Bomb",
                    )),
                    RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ongkir()),
                      );
                    },
                    color: Colors.brown.shade300,
                    textColor: Colors.white,
                    child: Text(
                      "Check postage",
                    )),
              ],
            ),
          ),
        ));
  }
}

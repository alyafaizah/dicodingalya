import 'package:dicodingalya/pages/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Belajar Form Flutter",
    home: Daftar(),
  ));
}

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Join with Us",
          style: TextStyle(
              fontFamily: 'Quantico',
              fontWeight: FontWeight.bold), //agar judul tampilan bold
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  labelText: "Email",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'full name cannot be empty';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "e.g.: AlyaFaizah",
                  labelText: "Username",
                  icon: Icon(Icons.how_to_reg_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'username cannot be empty';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "letters and numbers",
                  labelText: "Password",
                  icon: Icon(Icons.https),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.brown.shade200,
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text(
                      "SignIn",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.brown.shade200,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

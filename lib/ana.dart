import 'package:flutter/material.dart';
import 'package:flutter_app12/hakkinda.dart';
import 'package:flutter_app12/home_page.dart';
import 'package:flutter_app12/ileti%C5%9Fim.dart';



class Giris extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Giris> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Artık Hesaplamak Çok Kolay'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  tooltip: 'AnaSayfa',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Giris()),
                    );
                  }),
            ],
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                  child: Text('Hesap Makinesine Git', style: TextStyle(fontSize: 20.0),),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                  child: Text('İletişim', style: TextStyle(fontSize: 20.0),),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileApp()),
                    );
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('Hakkımızda', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hakkinda()),
                    );
                  }
              ),
            ),
          ]
          ))
      ),
    );
  }
}
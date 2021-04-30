import 'package:flutter/material.dart';
import 'package:flutter_app12/ana.dart';
import 'home_page.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "HESAP MAKİNESİ",
      home: new Giris(),
    );
  }
}
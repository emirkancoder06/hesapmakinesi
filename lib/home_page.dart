import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ana.dart';


class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, sum = 0;


   TextEditingController t1 = new TextEditingController(text: "0");
   TextEditingController t2 = new TextEditingController(text: "0");


  void toplama() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void cikarma() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void carpma() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void bolme() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;

    });
  }

  void sil() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Text("HESAP MAKİNESİ"),
      ),
      body: new Container(
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text(
              "Sonuç : $sum",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new TextField(

              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Birinci Sayıyı Giriniz : "),
              controller: t1,
            ),
            new TextField(

              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "İkinci Sayıyı Giriniz : "),
              controller: t2,
            ),

            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("TOPLA"),
                  color: Colors.limeAccent,
                  onPressed: toplama,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.limeAccent,
                  onPressed: cikarma,
                ),

              ],
            ),
            new Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("TEMİZLE"),
                  color: Colors.limeAccent,
                  //basıldıgında sil fonksiyonuna gidip orada işlemleri yapıyor.
                  onPressed: sil,
                ),
              ],
            ),
            new Row(
              //yeni bir satır oluştururarak çarpma ve bölme işlemlerinin butonlarını yerleştiriyoruz.
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("ÇARP"),
                  color: Colors.limeAccent,

                  onPressed: carpma,
                ),
                new MaterialButton(
                  child: new Text("BÖL"),
                  color: Colors.limeAccent,

                  onPressed: bolme,

                ),

              ],
            ),
            new MaterialButton(
              child: new Text("ANASAYFAYA DÖN"),
              color: Colors.limeAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Giris()),
                  );
                }

            )
          ],
        ),
      ),
    );
  }
}
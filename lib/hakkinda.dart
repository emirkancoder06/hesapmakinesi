

import 'package:flutter/material.dart';
import 'package:flutter_app12/ana.dart';



/// This is the main application widget.
class Hakkinda extends StatelessWidget {
  const Hakkinda({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hakkımızda'),
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
      body: Center(child: Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311067 numaralı Emirkan ÇAKMAK tarafından 30 Nisan 2021 günü yapılmıştır.')),

    );
  }
}

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    final card = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          //backgroundImage: ,
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Aplikasi Sosial Media',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Diajukan untuk memenuhi Ujian Tengah Semester Mata Kuliah Mobile Programming II Copyright Arni Jamaliyah - 18111025 - TIF RM 18 CID',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.blueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[card, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

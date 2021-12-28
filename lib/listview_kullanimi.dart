import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        "Ogrenci adi ${index + 1}", index + 1, "Ogrenci soyismi ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("MyToDo"),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.delete),
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children:tumOgrenciler.map((Ogrenci ogr) => ListTile(
        title: Text(ogr.isim),
        subtitle: Text(ogr.soyisim),
        leading:CircleAvatar(child: Text((ogr.id.toString())),),
        )
        ,).toList(),
        
      ),
    );
  }
}

class Ogrenci {
  final String isim;
  final int id;
  final String soyisim;

  Ogrenci(this.isim, this.id, this.soyisim);
}

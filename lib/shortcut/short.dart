import 'package:flutter/material.dart';

class TextDummy {
  String teks1 = """
    Herbivor merupakan pemakan tumbuhan, dalam tingkatan rantai makanan, 
    herbivor kegolongan konsumber antara lain sapi, 
    kelinci, rusa, belalang dan juga ulat.
    """;

  String teks2 = """ 
    Karnivora merupakan pemakan daging. 
    Hewan yang masuk kedalam golongan karnivora 
    karena memangsa hewan lain, 
    hewan ini juga disebut sebagai predator.
    """;

  String teks3 = """ 
    Karnivora merupakan pemakan daging. 
    Hewan yang masuk kedalam golongan karnivora 
    karena memangsa hewan lain, 
    hewan ini juga disebut sebagai predator.
    """;
}

class Shortcut {
  navigasi({teks = '', go = '', route}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(route, MaterialPageRoute(builder: (context) {
            return go;
          }));
        },
        child: Text(teks),
      ),
    );
  }

  teksTutor({teks = '', color = Colors.white}) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      height: 100,
      width: 200,
      color: color,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Text(
        teks,
        style: TextStyle(fontSize: 15),
        maxLines: 4,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  getBack({teks = 'Back', context = ''}) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(teks),
      ),
    );
  }

  info({teks = ''}) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.red),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
      ),
      // color: Colors.blue,
      // color: Colors.blue,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 100,
      width: 200,
      child: Center(
        child: Text(
          teks,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 44, 42, 42),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class Rute {
  final String nama_page;
  var page;

  Rute({this.nama_page, this.page});
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanStateful extends StatefulWidget {
  const LatihanStateful({Key key}) : super(key: key);

  @override
  State<LatihanStateful> createState() => _StatefulState();
}

class _StatefulState extends State<LatihanStateful> {
  int number = 0;
  void tambahAngka() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  tambahAngka();
                },
                child: Text('Tambah Bilangan'),
              ),
            ),
            Shortcut().getBack(teks: 'Back', context: context),
          ],
        ),
      ),
    );
  }
}

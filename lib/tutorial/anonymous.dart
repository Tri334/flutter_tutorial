import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanAnonymous extends StatefulWidget {
  LatihanAnonymous({Key key}) : super(key: key);

  @override
  State<LatihanAnonymous> createState() => _LatihanAnonymousState();
}

class _LatihanAnonymousState extends State<LatihanAnonymous> {
  String pesan = 'Ini Adalah Pesan';

  tombol() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                'Anonymous Method digunakan sekali saja',
                textAlign: TextAlign.center,
              ),
              color: Colors.blueAccent.shade200,
              height: 100,
              width: 200,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
            ),
            Text(pesan),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pesan = 'Tombol tertekan';
                });
              },
              child: Text('Tekan Saya'),
            ),
            Shortcut().getBack(teks: 'Back', context: context),
          ],
        ),
      ),
    );
  }
}

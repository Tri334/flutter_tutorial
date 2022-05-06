import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baris (Row) dan Kolom (Column)'),
      ),
      body: Center(
        child: Wrap(
          children: [
            Container(
              color: Colors.white12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ini Adalah Contoh Penggunaan Row'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shortcut().teksTutor(
                          teks: TextDummy().teks1, color: Colors.amberAccent),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks2, color: Colors.amberAccent),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks3, color: Colors.amberAccent)
                    ],
                  ),
                  Text('Ini Adalah Contoh Penggunaan Kolom'),
                  Column(
                    children: [
                      Shortcut().teksTutor(
                          teks: TextDummy().teks2, color: Colors.cyan),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks3, color: Colors.cyan),
                      Shortcut().teksTutor(
                          teks: TextDummy().teks1, color: Colors.cyan),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

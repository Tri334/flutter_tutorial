import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanTextStyle extends StatelessWidget {
  const LatihanTextStyle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Text Style'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shortcut().info(teks: 'Styling Teks dengan Font Berbeda'),
            Column(
              children: const [
                Text(
                  'Ini Adalah Teks Dengan Font Berbeda',
                  style: TextStyle(fontFamily: "Dafont"),
                ),
                Text(
                  'Ini adalah teks yang dicoret',
                  style: TextStyle(
                      color: Color.fromARGB(255, 74, 8, 112),
                      fontFamily: 'Dafont',
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  'Ini adalah teks yang kena overline',
                  style: TextStyle(
                      color: Color.fromARGB(255, 74, 8, 112),
                      fontFamily: 'Dafont',
                      decoration: TextDecoration.overline),
                ),
                Text(
                  'Ini adalah teks yang kena underline',
                  style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Dafont',
                      decoration: TextDecoration.underline),
                ),
                Text(
                  'Ini adalah teks yang kena underline',
                  style: TextStyle(
                      color: Color.fromARGB(255, 112, 18, 12),
                      fontFamily: 'Dafont',
                      decorationStyle: TextDecorationStyle.wavy,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            Shortcut().getBack(teks: 'Back', context: context)
          ],
        ),
      ),
    );
  }
}

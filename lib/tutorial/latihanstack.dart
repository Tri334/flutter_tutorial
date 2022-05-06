import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanStack extends StatefulWidget {
  const LatihanStack({Key key}) : super(key: key);

  @override
  State<LatihanStack> createState() => _LatihanStackState();
}

class _LatihanStackState extends State<LatihanStack> {
  @override
  Widget build(BuildContext context) {
    List<Widget> dummyText = [];

    setState(() {
      for (var i = 1; i <= 40; i++) {
        dummyText.add(Container(
          child: Text(
            'Ini adalah $i',
            style: TextStyle(fontSize: 30),
          ),
          margin: EdgeInsets.all(5),
        ));
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan Stack & Align Widget'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          color: Color.fromARGB(255, 33, 65, 243),
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.cyan,
                        )),
                      ],
                    )),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.cyan,
                      )),
                      Flexible(
                          child: Container(
                        color: Color.fromARGB(255, 33, 65, 243),
                      )),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Shortcut().info(teks: """
                Background pada widget, 
                kemudian list View, 
                dan 
                ditimpa button"""),
                Column(
                  children: dummyText,
                )
              ],
            ),
            Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(0.9, 0.9),
              child: Shortcut().getBack(context: context),
            )
          ],
        ));
  }
}

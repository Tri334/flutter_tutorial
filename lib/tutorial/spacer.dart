import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanSpacer extends StatefulWidget {
  const LatihanSpacer({Key key}) : super(key: key);

  @override
  State<LatihanSpacer> createState() => _LatihanSpacerState();
}

class _LatihanSpacerState extends State<LatihanSpacer> {
  List warna = [Colors.red, Colors.amber, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Spacer Widget'),
      ),
      body: Stack(children: [
        Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: warna[0],
              ),
              const Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: warna[1],
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                width: 80,
                height: 80,
                color: warna[2],
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Shortcut().getBack(context: context),
        )
      ]),
    );
  }
}

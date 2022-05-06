import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanAnimated extends StatefulWidget {
  LatihanAnimated({Key key}) : super(key: key);

  @override
  State<LatihanAnimated> createState() => _LatihanAnimatedState();
}

class _LatihanAnimatedState extends State<LatihanAnimated> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shortcut().info(teks: 'Animated Container '),
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                duration: Duration(seconds: 1),
                width: 80.0 + random.nextInt(101),
                height: 80.0 + random.nextInt(101),
              ),
            ),
            Shortcut().getBack(context: context)
          ],
        ),
      ),
    );
  }
}

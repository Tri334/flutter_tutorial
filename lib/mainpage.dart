import 'package:flutter/material.dart';
import 'package:flutter_tutorial/implementasi/simple_page.dart';
import 'package:flutter_tutorial/shortcut/short.dart';
import 'package:flutter_tutorial/tutorial/animated.dart';
import 'package:flutter_tutorial/tutorial/anonymous.dart';
import 'package:flutter_tutorial/tutorial/containerLearn.dart';
import 'package:flutter_tutorial/tutorial/image.dart';
import 'package:flutter_tutorial/tutorial/latihanflexible.dart';
import 'package:flutter_tutorial/tutorial/listview.dart';
import 'package:flutter_tutorial/tutorial/rowcoloumn.dart';
import 'package:flutter_tutorial/tutorial/stateful.dart';
import 'package:flutter_tutorial/tutorial/textTutor.dart';
import 'package:flutter_tutorial/tutorial/textstyle.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Rute> rute = [
      Rute(nama_page: 'Text Tutorial', page: const LatihanTextTutor()),
      Rute(nama_page: 'Row & Column', page: const LatihanRowColumn()),
      Rute(
        nama_page: 'Container',
        page: LatihanContainer(),
      ),
      Rute(nama_page: 'Stateful Widget', page: const LatihanStateful()),
      Rute(nama_page: 'Anonymous Widget', page: LatihanAnonymous()),
      Rute(
        nama_page: 'Text Style',
        page: const LatihanTextStyle(),
      ),
      Rute(
        nama_page: 'List View',
        page: const LatihanListView(),
      ),
      Rute(nama_page: 'Animated Container', page: LatihanAnimated()),
      Rute(nama_page: 'Flexible Layout', page: const LatihanFlexible()),
      Rute(nama_page: 'Stack & Align Widget', page: const LatihanFlexible()),
      Rute(nama_page: 'Image Widget', page: const LatihanImage()),
    ];

    List<Widget> rutes = [];

    setState(() {
      for (var element in rute) {
        rutes.add(Shortcut().navigasi(
            teks: element.nama_page, route: context, go: element.page));
      }
    });

    double widthDevice = MediaQuery.of(context).size.width - 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tutorial',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              color: Colors.grey,
              width: widthDevice,
              child: Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: rutes,
                ),
              ),
            ),
            const Text(
              'Implementasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Shortcut().navigasi(
                    teks: 'Simple Page', go: const SimplePage(), route: context)
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanListView extends StatefulWidget {
  const LatihanListView({Key key}) : super(key: key);

  @override
  State<LatihanListView> createState() => _LatihanListViewState();
}

class _LatihanListViewState extends State<LatihanListView> {
  List<Widget> widgets = [];
  int counter = 1;
  // _LatihanListViewState() {
  //   for (var i = 0; i < 10; i++) {
  //     widgets.add(Text('Data ke $i', style: TextStyle(fontSize: 20)));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
      ),
      body: Center(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text('Data ke $counter',
                          style: TextStyle(fontSize: 20)));
                      counter++;
                    });
                  },
                  child: Text('Tambah Data'),
                ),
                ElevatedButton(
                  onPressed: () {
                    try {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    } catch (e) {
                      print('List kosong');
                    }
                  },
                  child: Text('Hapus Data'),
                ),
                Shortcut().getBack(teks: 'Back', context: context)
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

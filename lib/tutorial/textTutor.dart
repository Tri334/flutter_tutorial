import 'package:flutter/material.dart';

class LatihanTextTutor extends StatelessWidget {
  const LatihanTextTutor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Widget'),
        ),
        body: Center(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.vertical,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: const Text(
                  'Ini adalah Text panjang yang sangat panjang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: const Text(
                  'Ini adalah Text Yang tidak terpotong',
                  textAlign: TextAlign.end,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightGreen,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: const Text(
                  'Ini adalah Text Yang Justify dengan teks',
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanImage extends StatelessWidget {
  const LatihanImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Image Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            // spacing: 5,
            // runSpacing: 5,
            children: [
              Container(
                color: Colors.cyan,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/image/kucing.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.red,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/image/kucing.jpg',
                  fit: BoxFit.none,
                ),
              ),
              Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/image/kucing.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                color: Colors.lightBlue,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/image/kucing.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.lightGreen,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: const Image(
                  image: NetworkImage(
                    'https://cdn-asset.jawapos.com/wp-content/uploads/2020/12/baju-untuk-kucing-560x390.jpg',
                  ),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
              Container(
                color: Colors.pink,
                padding: const EdgeInsets.all(5),
                height: 300,
                width: 300,
                child: const Image(
                  image: NetworkImage(
                    'https://cdn-asset.jawapos.com/wp-content/uploads/2020/12/baju-untuk-kucing-560x390.jpg',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          Align(
            child: Shortcut().getBack(context: context),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/image/kucing.jpg',
              ),
              height: 100,
              width: 200,
            ),
            Row(
              children: [],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'))
          ],
        ),
      ),
    );
  }
}

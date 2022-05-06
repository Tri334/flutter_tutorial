import 'package:flutter/material.dart';
import 'package:flutter_tutorial/shortcut/short.dart';

class LatihanDragable extends StatefulWidget {
  const LatihanDragable({Key key}) : super(key: key);

  @override
  State<LatihanDragable> createState() => _LatihanDragableState();
}

class _LatihanDragableState extends State<LatihanDragable> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Dragable'),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Draggable<Color>(
                    data: color1,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.black87.withOpacity(0.2),
                        shape: StadiumBorder(),
                        // elevation: 2,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.5),
                        shape: StadiumBorder(),
                        elevation: 2,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        // elevation: 2,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color2,
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.black87.withOpacity(0.2),
                        shape: StadiumBorder(),
                        // elevation: 2,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.5),
                        shape: StadiumBorder(),
                        elevation: 2,
                      ),
                    ),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        // elevation: 2,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (data) => true,
                onAccept: (data) {
                  isAccepted = true;
                  targetColor = data;
                },
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                          ),
                        )
                      : const SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.black26,
                            shape: StadiumBorder(),
                          ));
                },
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Shortcut().getBack(context: context),
          )
        ],
      ),
    );
  }
}

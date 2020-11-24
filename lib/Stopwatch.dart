import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StopwatchWidghet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Stopwatch1();
}

class _Stopwatch1 extends State<StopwatchWidghet> {
  int _counter = 30;

  void start() {
    _counter = 30;
    Timer.periodic((Duration(seconds: 1)), (timer) {
      setState(() {
        _counter > 0 ? _counter-- : timer.cancel();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            _counter.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        FloatingActionButton(
          onPressed: start,
          child: Icon(Icons.play_arrow),
        ),
      ],
    );
  }
}

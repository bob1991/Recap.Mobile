import 'package:flutter/material.dart';
import 'Stopwatch.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RecappApp'),
        ),
        backgroundColor: Colors.blue,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StopwatchWidghet(),
              Notepad(),
            ],
          ),
        ),
      ),
    ));

class Notepad extends StatelessWidget {
  const Notepad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}

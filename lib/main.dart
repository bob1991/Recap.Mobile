import 'package:flutter/material.dart';
import 'Stopwatch.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Expanded(
                child: StopwatchWidghet(),
                flex: 1,
              ),
              Expanded(
                child: Notepad(),
                flex: 2,
              ),
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
      height: 150,
      color: Colors.grey,
      margin: EdgeInsets.all(12),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid),
          ),
        ),
        textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        expands: true,
        style: GoogleFonts.roboto(fontSize: 24, color: Colors.grey[850]),
      ),
    );
  }
}

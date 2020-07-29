import 'package:flutter/material.dart';


class ComingSoonPage extends StatefulWidget {
  ComingSoonPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text("Coming Soon"),
        ),
      ),
    );
  }
}

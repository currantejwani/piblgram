import 'package:flutter/material.dart';
import 'package:piblgram/components/usercard.dart';

class FollowingPage extends StatefulWidget {
  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: BackButton(),
        title: Align(alignment: Alignment.topLeft, child: Text('Following')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for(i = 0; i < 12; i++)
              UserCard(label: 'Following',colour: Colors.blue,tcolor: Colors.white),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:piblgram/components/usercard.dart';


class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: BackButton(),
        title: Align(alignment: Alignment.topLeft, child: Text('Followers')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for(i = 0; i < 30; i++)
            UserCard(label: 'Follow',colour: Colors.white,tcolor: Colors.grey[700],),
          ],
        ),
      ),
    );
  }
}

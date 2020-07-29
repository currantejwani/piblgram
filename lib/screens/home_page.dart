import 'package:flutter/material.dart';
import 'package:piblgram/components/imagecard.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Piblugram'),
      ),
      body: getBody(),
    );
  }
  getBody(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageCard(userlabel: 'Virat Kholi',image: 'assets/pic1.jpeg'),
          ImageCard(userlabel: 'Rohit Sharma',image: 'assets/pic2.jpeg'),
          ImageCard(userlabel: 'Narendra Modi',image: 'assets/pic3.jpeg'),
          ImageCard(userlabel: 'Rohit Sharma',image: 'assets/pic4.jpeg'),
          ImageCard(userlabel: 'Ms Dhoni',image: 'assets/pic5.jpeg'),
        ],
      ),
    );
  }
}


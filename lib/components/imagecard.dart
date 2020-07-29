import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key key,
    @required this.userlabel,
    @required this.image,
  }) : super(key: key);

  final String userlabel;
  final String image;

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width : x*0.02),
            Icon(Icons.account_circle,size: 36,),
            SizedBox(width : x*0.03),
            Container(child:Text(userlabel,style: TextStyle(fontSize: 18),)),
          ],
        ),
        SizedBox(height: 5),
        Container(height: y*0.4, width: x, child: Image.asset(image, fit: BoxFit.fill)),
        Row(
          children: <Widget>[
            SizedBox(
              width: 5,
            ),
            IconButton(
              icon: Icon(Icons.favorite_border,size: 30,color: Colors.white),
              onPressed: (){},
            ),
            SizedBox(
              width: 10,
            ),
            Icon(FontAwesomeIcons.comment,size: 29),
          ],
        )
      ],
    );
  }
}

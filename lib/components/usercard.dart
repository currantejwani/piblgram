import 'package:flutter/material.dart';


class UserCard extends StatelessWidget {
  UserCard({this.cardChild, this.onPress, @required this.label,@required this.colour,@required this.tcolor});
  final Widget cardChild;
  final Function onPress;
  final String label;
  final Color colour;
  final Color tcolor;

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Container(
      height: y*0.1,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: y*0.01,horizontal: x*0.03),
            width: x*0.15,
            child: Icon(Icons.account_circle, color: Colors.blue[300],size: y*0.082,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: y*0.02,horizontal: x*0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('User Name', style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold, fontSize: y*0.023)),
                SizedBox(
                  height: y*0.005,
                ),
                Row(
                  children: <Widget>[
                    Text('123k followers',style: TextStyle(color: Colors.grey[700])),
                    SizedBox(
                      width: x*0.025,
                    ),

                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding:  EdgeInsets.only(right: x*0.06),
            child: Container(
              height: y / 20,
              width: x / 3.8,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      side: BorderSide(color: Colors.grey[700],width: 3.0)),
                  onPressed: () {
                    //     Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddNewHelper()),
                  },
                  color: colour,
                  textColor: Colors.blue,
                  child: Text(label, style: TextStyle(color: tcolor,fontWeight: FontWeight.bold))),

            ),

          ),
        ],

      ),
      decoration: BoxDecoration(
        //color: Colors.white,
      ),
    );
  }
}
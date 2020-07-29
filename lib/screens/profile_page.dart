import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'followers_page.dart';
import 'following_page.dart';
import 'editprofile_page.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Align(alignment: Alignment.topLeft,child: Text('RohitSharma')),
      ),
      body: getBody(),
    );
  }
  getBody(){
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: x*0.03),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage('assets/profilepic.jpeg'),
                      ),
                      SizedBox(height: 10,),
                      Text('Rohit Sharma',style: TextStyle(fontSize: y*0.02),),
                    ],
                  ),
                  Spacer(),
                  Column(

                    children: <Widget>[
                      Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: x*0.05)),
                      Text('Posts'),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => FollowersPage()));
                    },
                    child: Column(
                      children: <Widget>[
                        Text('30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: x*0.05)),
                        Text('Followers'),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () { Navigator.of(context).push(MaterialPageRoute(builder: (_) => FollowingPage()));},
                    child: Column(
                      children: <Widget>[
                        Text('12',style: TextStyle(fontWeight: FontWeight.bold,fontSize: x*0.05)),
                        Text('Following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => EditProfilePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: x*0.033, vertical: 18),
                height: y*0.047,
                width: x,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.w500),)),
              ),
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
            ]
        ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Container(
                    child: Image.asset('assets/pic2.jpeg',fit: BoxFit.fill,),
                    height: y*0.18,
                  )),
                  SizedBox(width: 4),
                  Expanded(child: Container(
                    child: Image.asset('assets/pic4.jpeg',fit: BoxFit.fill,),
                    height: y*0.18,
                  )),
                  SizedBox(width: 4),
                  Expanded(child: Container(
                    child: Image.asset('assets/profilepic.jpeg',fit: BoxFit.fill,),
                    height: y*0.18,
                  )),
                ],
              )
            ],

          ),
        )
      ],

    );
  }
}

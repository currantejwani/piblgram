import 'package:flutter/material.dart';



class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();




  Widget buildTextField({String name, TextEditingController controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text(
            name,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: name,
          ),
        ),
      ],
    );
  }






  @override
  Widget build(BuildContext context) {
    nameController.text = 'RohitSharma';
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          leading: BackButton(),
          title: Text('Edit Profile'),
        ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 4.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profilepic.jpeg'),
                radius: 50.0,
              ),
            ),
          ),
          FlatButton(
            onPressed: (){},
              child: Text("Change Photo",
                style: TextStyle(color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                buildTextField(name: "Username", controller: nameController),
                buildTextField(name: "Website", controller: websiteController),
                buildTextField(name: "Bio", controller: bioController),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
              onPressed: () => {},
              child: Text("Logout")
              ))
        ],
      ),
    );
  }
}

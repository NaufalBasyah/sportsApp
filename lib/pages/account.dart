import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/model/user.dart';
import '/utils/user_preferences.dart';
import '/pages/stats_screen.dart';
import '/widget/button_widget.dart';
import '/widget/profile_widget.dart';
class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image(image: NetworkImage('https://previews.123rf.com/images/suphaporn/suphaporn1802/suphaporn180200145/95068631-soccer-football-on-corner-kick-line-of-ball-and-a-soccer-field-football-field-background-texture.jpg'),
          fit: BoxFit.cover,
          )
          ,

          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: size.height*.2),
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () async {},
              ),
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              buildAbout(user),
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            child:ClipOval(
              child: Material(
                color: Colors.green[800], // Button color
                child: InkWell(
                  splashColor: Colors.white, // Splash color
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StatsScreen()),
                    );
                  },
                  child: SizedBox(width: 56, height: 56, child: Icon(Icons.analytics_outlined,size: 45)),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );


  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          user.about,
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );
}

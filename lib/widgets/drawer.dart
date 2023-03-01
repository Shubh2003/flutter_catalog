import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl=
    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic1.cbrimages.com%2Fwordpress%2Fwp-content%2Fuploads%2F2020%2F09%2FNaruto-Sage-Mode.jpg&imgrefurl=https%3A%2F%2Fwww.cbr.com%2Fnaruto-every-movie-chronologically%2F&tbnid=sfRPs0pGbsbbxM&vet=12ahUKEwiTj9jD8Zn9AhXRmdgFHVY5DeMQMyggegUIARCnAg..i&docid=YHg41MhMXa7MTM&w=1920&h=960&q=naruto&hl=en&ved=2ahUKEwiTj9jD8Zn9AhXRmdgFHVY5DeMQMyggegUIARCnAg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                 margin: EdgeInsets.zero,
                accountName: Text("Shubham Daulkar"),
              accountEmail: Text("daulkarshubham@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
               ),
               ),

                ListTile(
                leading:Icon(CupertinoIcons.home,
                color: Colors.white,
                ) ,
                title: Text("Home",
                textScaleFactor: 1.2,
                style:TextStyle(
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                leading:Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
                ) ,
                title: Text("Profile",
                textScaleFactor: 1.2,
                style:TextStyle(
                  color: Colors.white,
                ),
                ),
               ),
               ListTile(
                leading:Icon(CupertinoIcons.mail,
                color: Colors.white,
                ) ,
                title: Text("Email",
                textScaleFactor: 1.2,
                style:TextStyle(
                  color: Colors.white,
                ),
                ),
               )
          ],
        ),
      ),
    );
  }
}
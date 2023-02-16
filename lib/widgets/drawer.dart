import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl=
    "https://www.google.com/search?q=naruto&hl=en&sxsrf=AJOqlzUPRA2HYP0ufpeMtdPVaxE3uVKhSw:1676545187172&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjl7dLC8Zn9AhWc1DgGHdBIBMkQ_AUoAXoECAEQAw&biw=1536&bih=750&dpr=1.25#imgrc=1D2_ML1sUpCF8M";
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
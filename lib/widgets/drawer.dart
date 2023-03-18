

import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  Widget build(BuildContext Context){
    const imageUrl="https://previews.123rf.com/images/vitechek/vitechek1907/vitechek190700199/126786791-user-login-or-authenticate-icon-human-person-symbol-vector.jpg";
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding:EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin:EdgeInsets.zero,
              accountName: Text("Nisha Gangwar"), 
              accountEmail:Text("gangwarnisha21@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              ),
              ),
              ListTile(
                leading: Icon(
                 CupertinoIcons.home,
                 color:Colors.black, 
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                   color: Colors.black, 
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                 CupertinoIcons.profile_circled,
                 color:Colors.black, 
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                   color: Colors.black, 
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                 CupertinoIcons.mail,
                 color:Colors.black, 
                ),
                title: Text(
                  "Email me",
                  style: TextStyle(
                   color: Colors.black, 
                  ),
                ),
              )
        ],
      ) ,
    
    );
  }
}
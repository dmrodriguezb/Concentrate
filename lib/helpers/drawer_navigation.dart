import 'package:concentrate/screens/categoria_pomodoro.dart';
import 'package:flutter/material.dart';
import 'package:concentrate/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget{
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation>{
@override
  Widget build(BuildContext context){
  return Container(
    child: Drawer(
    child: ListView(
      children:  <Widget> [
        UserAccountsDrawerHeader(
          accountName: Text("Concentrate"),
             currentAccountPicture: GestureDetector(
              child: CircleAvatar(
               backgroundColor: Colors.black54,
               child: Icon(
                Icons.filter_list,
              color: Colors.white,
            ),
            ),
          ),
          decoration: BoxDecoration(color:Colors.deepOrange[300]
          ),
        ),
        ListTile(
          title:  Text("Inicio"),
          leading :Icon(Icons.home),
          onTap: (){
            Navigator.of(
                context).push(new MaterialPageRoute(
                builder: (context)=>new HomeScreen()));
          },
        ),
        ListTile(
          title:  Text("Pomodoro"),
          leading :Icon(Icons.access_alarm_outlined),
          onTap: (){
            Navigator.of(
                context).push(new MaterialPageRoute(
                builder: (context)=>new CountDownTimerPage()));
          },
        ),
        ListTile(
          title:  Text("Alexander"),
          leading :Icon(Icons.access_alarm_outlined),
          onTap: (){
            Navigator.of(
                context).push(new MaterialPageRoute(
                builder: (context)=>new CountDownTimerPage()));
          },
        ),
        ListTile(
          title:  Text("Personalizado"),
          leading :Icon(Icons.access_alarm_outlined),
          onTap: (){
            Navigator.of(
                context).push(new MaterialPageRoute(
                builder: (context)=>new CountDownTimerPage()));
          },
        ),
      ],
    ),
    ),
  );
}
}
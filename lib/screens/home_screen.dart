import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentrate/helpers/drawer_navigation.dart';

import 'package:concentrate/screens/categoria_pomodoro.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
      ),body:
    Column(
        children:[
          ListTile(
            title: Text( "Bienvenido a tu aplicacion para ayudarte a concentrarte ",
              style: const TextStyle(
                  fontSize: 19,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title : Text("Elije el metodo con el que te acomodes mejor:",
              style: const TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold),
            ),

          ),
          ListTile(
            title:Text( "Método Pomodoro: ",
              style: const TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Se basa en usar un temporizador para dividir el tiempo en intervalos fijos, llamados pomodoros, de 25 minutos de actividad",),
          ),
          ElevatedButton(onPressed: (){Navigator.of(context).push(new MaterialPageRoute( builder: (context)=>new CountDownTimerPage()));}, child: Text("Ingresar")),


          ListTile(
              title:Text( "Método Alexander: ",
                style: const TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Se basa en usar un temporizador para dividir el tiempo en intervalos fijos, 40 minutos de actividad")
          ),
          ElevatedButton(onPressed: (){Navigator.of(context).push(new MaterialPageRoute( builder: (context)=>new CountDownTimerPage()));}, child: Text("Ingresar")),

          ListTile(
              title:Text( "Personalizado: ",
                style: const TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text( "Usted elije el tiempo que estara dedicando a la actividad")
          ),

          ElevatedButton(onPressed: (){Navigator.of(context).push(new MaterialPageRoute( builder: (context)=>new CountDownTimerPage()));}, child: Text("Ingresar")),
        ]

    ),
      drawer: DrawerNavigation(),
    );
  }
}

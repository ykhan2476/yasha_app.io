import 'package:app1/Screens/HomeScreen.dart';
import 'package:app1/Screens/Screen1.dart';
import 'package:app1/Screens/Screen2.dart';
import 'package:app1/Screens/Screen3.dart';
import 'package:app1/components/container1.dart';
import 'package:app1/components/drawersection.dart';
import 'package:flutter/material.dart';

class drawermenu extends StatefulWidget {
  const drawermenu({super.key});

  @override
  State<drawermenu> createState() => _drawerState();
}

class _drawerState extends State<drawermenu> {
  @override
  
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(height:hght ,width:wid*0.1 ,
                      child:ListView(children: [
                      Row(children: [Container(height: hght*0.15,width:wid*0.844,
                                child: Column(children: [
                                      Row(children:[Container(height:hght*0.1,width:wid*0.2,child: Icon(Icons.local_cafe),margin: EdgeInsets.only(bottom: 0),),
                                                      Container(height:hght*0.1,width:wid*0.42,margin: EdgeInsets.only(top: 35),
                                                               child: Text("BREW's CAFE",style:TextStyle(fontSize: 24,),),),
                                                      Container(height:hght*0.1,width:wid*0.2,child: Icon(Icons.close),margin: EdgeInsets.only(bottom: 0),)],),
                                ],),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.8,child: drawersection( name: 'home',func: HomeScreen()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.8,child: drawersection( name: 'screen1',func: Screen1()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.8,child: drawersection( name: 'screen2',func: Screen2()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.8,child: drawersection( name: 'screen3',func: Screen3()),)],),
                      ])
    ,);
  }
}//
import 'package:app1/components/drawermenu.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Screen2'),
                      
                       foregroundColor: const Color.fromARGB(115, 12, 2, 2),
                       
                       ),
      drawer: Drawer(child: SingleChildScrollView(scrollDirection: Axis.vertical,child: drawermenu(),),),
      body:Column(children: [Container(child: Column(children: [
                                    Row(children: [Column(children: [Container(height: hght*0.1,width: wid,color: Color.fromARGB(255, 20, 139, 230),)],)],) , 
                                    Row(children: [Container(height: hght*0.3,width: wid,color: Colors.cyan,)],) ,
                                    Row() ,  
                                     ],),),
                              ],),
    );
  }
}
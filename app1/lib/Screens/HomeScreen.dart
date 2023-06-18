import 'package:app1/Screens/HomeScreen.dart';
import 'package:app1/Screens/Screen1.dart';
import 'package:app1/components/container1.dart';
import 'package:app1/components/drawermenu.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
     List<String> name = ["Taco Bell", "LAXMI BAKEY", "Shiv sagar cafe","LAXMI BAKEY","Taco Bell", "LAXMI BAKEY", "Shiv sagar cafe"];
  List<String>location = [
    "Shop No 04, Food Court, 3rd Floor",
    "Ram Gali Number 6, opp. Dashera Maidan",
    "Near Hanuman Dhaba, Jaipur, 302004, Raja park",
    "Near Hanuman Dhaba, Jaipur, 302004, Raja park",
    "Shop No 04, Food Court, 3rd Floor",
    "Ram Gali Number 6, opp. Dashera Maidan",
    "Shop No 04, Food Court, 3rd Floor",
    
  ];
  List<String> image = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
    "assets/images/d7.png"
  ];
    return Scaffold(
      appBar: AppBar(title: Text("BREW's CAFE"),
                       foregroundColor: const Color.fromARGB(115, 12, 2, 2),
                      
                       ),
      drawer: Drawer(child: SingleChildScrollView(scrollDirection: Axis.vertical,child: drawermenu(),),),
      body: Column(children: [Container(child: Column(children: [
                                    Row(children: [Column(children: [Container(height: hght*0.1,width: wid,decoration: BoxDecoration(color: Color.fromARGB(255, 13, 128, 215),),)],)],) , 
                                    Row(children: [Container(height: hght*0.3,width: wid*0.944,margin: EdgeInsetsDirectional.all(10),
                                                              decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.all(Radius.circular(40)),),
                                                              child: Image.asset('assets/images/d9.png',fit: BoxFit.cover,),)],) ,
                                    Column(children: [Row(children:[Container(width: wid,height:hght*0.4 ,
                                                           child:SingleChildScrollView(scrollDirection: Axis.vertical,
                                                                      child: Column(children: [ 
                                                                        for(int i=0;i<name.length;i++)
                                                                           container1(
                                                                            image: image[i],
                                                                            name:name[i] ,
                                                                            location:location[i] 
                                                                           ),
                                                                      ]),),),],)])],)),
                                             ],) ,  
                            
    );
  }
}
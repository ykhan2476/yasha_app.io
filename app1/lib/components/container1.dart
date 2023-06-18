import 'package:flutter/material.dart';

class container1 extends StatefulWidget {
  String? image;
  String? name;
  String? location;
  container1({super.key,this.image,this.name,this.location});
    
  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    
    return Container(
      height:wid*0.4,width: wid,
      child: Row(children: [
                   Column(children: [Container(height: wid*0.3,width: wid*0.3,margin: EdgeInsets.all(10),
                               decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20) ),child: Image.asset('${widget.image}',fit: BoxFit.cover,),)],),
                   Column(children: [
                         Row(children: [Container(height:wid*0.15,width: wid*0.6,margin: EdgeInsets.all(5),
                              decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10) ),child: Text('${widget.name}'))],),
                         Row(children: [Container(height:wid*0.15,width: wid*0.6,margin: EdgeInsets.all(5),
                              decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10) ), child: Text('${widget.location}'),)],),
                   ],),
                   ],),
    );
  }
}
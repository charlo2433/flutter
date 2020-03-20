import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(
       title: new Text("Home Page"),
     ),
     body: Stack(
       children: <Widget>[
         Flex(direction: Axis.vertical,
           children: <Widget>[
             Expanded(
                 flex :1,
                 child: Container(
               color: Colors.cyanAccent,
             )),
           ],
         ),
         Padding(padding: EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 20.0),
         child: Card(
           child: ListView(
             children: <Widget>[
               Column(
                 children: <Widget>[
                   SizedBox(height: 10.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       CircleAvatar(
                         child: Text("Stephen"),
                         radius: 60,
                       ),
                       SizedBox(height: 10.0),

                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: TextFormField(
                       decoration: InputDecoration(
                           hintText: "enter email"
                       ),
                       keyboardType: TextInputType.emailAddress,
                     ),
                   )
                 ],
               )
             ],
           ),
         ),)
       ],
     ),
   );
  }

}
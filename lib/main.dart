import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternavdrawer/Carousel.dart';
import 'package:flutternavdrawer/Post_page.dart';
import 'package:flutternavdrawer/api.dart';
import 'package:flutternavdrawer/burger.dart';
import 'package:flutternavdrawer/carosel.dart';
import 'package:flutternavdrawer/dialog.dart';
import 'package:flutternavdrawer/login.dart';
import 'package:flutternavdrawer/snackbartoast.dart';
import 'new_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.deepPurple,
      primaryColor: Colors.grey[50]),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Verus Company"),
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 0.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Charlo Steve"), accountEmail: new Text("chalosteve9@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
              ? Colors.deepPurple
            : Colors.white,
            child: new Text("P"),),),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new NewPage()));
              },
            ),
            new ListTile(
              title: new Text("Caurosel_pro"),
              trailing: new Icon(Icons.search),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new App()));
              },
            ),
            new ListTile(
              title: new Text("Caurosel"),
              trailing: new Icon(Icons.search),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Carousel1()));
              },
            ),
            new ListTile(
              title: new Text("Burger"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Burger()));
              },
            ),
            new ListTile(
              title: new Text("Snackbar"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Snackbar()));
              },
            ),
            new ListTile(
              title: new Text("Api"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new ApiData()));
              },
            ),
            new ListTile(
              title: new Text("Login"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new SignInTwo()));
              },
            ),
            new ListTile(
              title: new Text("Post_Page"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new PostPage()));
              },
            ),
            new ListTile(
              title: new Text("Dialog"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Dialog_Pro()));
              },
            ),
            new ListTile(
              title: new Text("Array List"),
              trailing: new Icon(Icons.book),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Dialog_Pro()));
              },
            )

          ],
        ),
      ),
    );
  }

}

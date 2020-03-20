import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternavdrawer/model/PostData.dart';
import 'package:flutternavdrawer/repository/api_list.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';

class PostPage extends StatefulWidget{
  _PostPage createState()=> _PostPage();
}

class _PostPage extends State<PostPage>{

  ProgressDialog pr;

  List<PostData> _data;

  Future<String> getPost() async{
    var response = await http.get(APIS.photosList,
        headers: {"Accept": "application/json"});

    setState(() {
      List res = json.decode(response.body);
      _data = res.map((data)=> PostData.fromJsonMap(data)).toList();
    });

    return "success";
  }

  @override
  void initState(){
    super.initState();
    getPost();
  }


  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please Waiting...',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600)
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
      ),


      body: ListView.builder(
          itemCount: _data == null ? 0 : _data.length,
          itemBuilder: (context,index){
            final item = _data[index];
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Image.network(item.thumbnailUrl),
                  title: Text(
                    item.title,
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
              ),
            );
          }),
    );
  }
  
}
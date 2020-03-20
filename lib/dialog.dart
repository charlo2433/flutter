import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class Dialog_Pro extends StatefulWidget{
  DialogState createState()=> DialogState();
}
class DialogState extends State<Dialog_Pro>{
  ProgressDialog pr;
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
        title: Text("Dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed:(){
            pr.show();
          } ,
          child: Text("Dailog"),)
        ],
      ),
    );
  }

}
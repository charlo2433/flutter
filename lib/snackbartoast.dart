import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Snackbar extends StatefulWidget{
  State createState()=> SnackBarState();
}

class SnackBarState extends State<Snackbar>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            color: Colors.cyan,
            child: Text('Snackbar'),
              onPressed: (){
                Flushbar(
                  title: "Code",
                  message: "Its nice to get started in flutter android",
                  duration: Duration(seconds: 3),
                )..show(context);
          }),
          MaterialButton(
            color: Colors.blue,
            child: Text('Snackbar new'),
            onPressed: (){
              Flushbar(
                title: 'Another',
                message: 'its good to get new tricks',
                icon: Icon(
                  Icons.check,
                  color: Colors.greenAccent,
                ),
                leftBarIndicatorColor: Colors.blue[300],
                flushbarStyle: FlushbarStyle.FLOATING,
                reverseAnimationCurve: Curves.decelerate,
                forwardAnimationCurve: Curves.elasticOut,
                duration: Duration(seconds: 3),
              )..show(context);
            },
          ),
          MaterialButton(
            color: Colors.green,
              child: Text('Success'),
              onPressed: (){
              FlushbarHelper.createSuccess(
                title: 'Success',
                  message: 'its new data',
              duration: Duration(seconds: 3))..show(context);
              }),
          MaterialButton(
              color: Colors.green,
              child: Text('Toast'),
              onPressed: (){
                Fluttertoast.showToast(msg: 'new toast in flutter',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  fontSize: 16.0,

                );
              }),
        ],
      ),
    );
  }

}
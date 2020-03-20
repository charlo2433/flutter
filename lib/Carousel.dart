import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Carousel1 extends StatefulWidget{
  @override
  State createState()=> new Carousel_state();
}

class Carousel_state extends State<Carousel1>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400.0,
          width: 300.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('assets/girl.jpeg'),
              AssetImage('assets/girl.jpeg'),
              AssetImage('assets/girl.jpeg')
            ],
            autoplay: true,
            autoplayDuration: Duration(seconds: 2),
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,

          ),
        ),
      ),
    );
  }

}
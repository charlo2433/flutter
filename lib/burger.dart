import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


class Burger extends StatefulWidget{

  @override
  State createState()=> BurgerState();
}

class BurgerState extends State<Burger>{
  List<String> photos = [
    'assets/bg1.jpg',
    'assets/bg1.jpg',
    'assets/chips.jpg',
    'assets/chicken.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 210,
                    child: Carousel(
                      boxFit: BoxFit.cover,
                      images: [
                        AssetImage('assets/burger1.jpeg'),
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
                      dotPosition: DotPosition.bottomCenter,
                      dotVerticalPadding: 10.0,
                      showIndicator: true,
                      indicatorBgPadding: 7.0,

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back),color: Colors.white, onPressed: (){}),
                      IconButton(icon: Icon(Icons.favorite), color: Colors.pink, onPressed: (){})
                    ],
                  ),

                  Positioned(top: 173.0, left: 5.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 15.0),
                          Text('4.2',style:TextStyle(
                            color: Colors.white
                          ),),
                          SizedBox(width: 5.0),
                        ],
                      ))
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.only(left: 2.0, right: 150.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'OPENS NOW TILL 7.00 PM',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Text(
                      'CHICKEN INN',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: EdgeInsets.only(left: 25.0,right: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Kimanthi Street 16th Nairobi CBD',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(Icons.location_on),
                    SizedBox(width: 5.0),
                    Text('400ft Away',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0
                      ),)
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              _buildListItem(photos[0]),
              SizedBox(height: 10.0),
              _buildListItem(photos[1]),
              SizedBox(height: 10.0),
              _buildListItem(photos[2]),
              SizedBox(height: 10.0),
              _buildListItem(photos[3]),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildListItem(String picture){
    return Column(
      children: <Widget>[
        Text('Maple Mustard Tempeh',
          style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 5.0),
        Text('Marinated kale, onion, tomato and roasted',
          style: TextStyle(
              fontSize: 11.0,
              fontFamily: 'Montserrat',
              // fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
        ),
        Text('garlic aioli on grilled spelt bread',
          style: TextStyle(
              fontSize: 11.0,
              fontFamily: 'Montserrat',
              // fontWeight: FontWeight.bold,
              color: Colors.grey
          ),),
        SizedBox(height: 10.0),
        Text('\$11.25',
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),)
      ],
    );
  }
}


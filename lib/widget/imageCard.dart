import 'package:campus_market_app/Screens/portfolioDetails.dart';
//import 'package:campus_market_app/Screens/portfolioDetails.dart';
import 'package:campus_market_app/widget/fill_Conent.dart';
import 'package:flutter/material.dart';



class ImageCard extends StatelessWidget {
  final String name;
  final String picture;
  final String aboutProject;
  final Place place;

  ImageCard({@required this.name, @required this.picture, @required this.aboutProject, this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:4.0),
      child: InkWell(
          onTap:(){
            Navigator
                .push(context, MaterialPageRoute(builder: (_)=>portfolioDetails()));
          },
          child:Container(
            margin: EdgeInsets.all(6.0),

            child:  Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right:10.0),
                  height: 170,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image:DecorationImage(image:AssetImage("Assets/images/$picture"),
                      fit: BoxFit.cover,),),),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(name, style:TextStyle(fontSize: 20.0, color: Colors.red)),
                      SizedBox(height: 20.0,),
                      Text(aboutProject, style: TextStyle(fontSize: 12),)


                    ],
                  ),
                )

              ],

            ),

          )
      ),
    );
  }}







import 'package:campus_market_app/Screens/portfolioDetails.dart';
import 'package:campus_market_app/widget/fill_Conent.dart';
import 'package:campus_market_app/widget/imageCard.dart';
import 'package:flutter/material.dart';



class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}


class _ImageCardsState extends State<ImageCards> {
  List<Place> places =[
    Place(name: "Adejoh joshua", image:"pic1.jpg" ,
        aboutProject:"We strive to update the contents of "
            "\nour website and tutorials as timely and as precisely as "),
    Place(name: "Adejoh samuel", image:"pic1.jpg" , aboutProject:"We strive to update the contents of "
        "\nour website and tutorials as timely and as precisely as"),
    Place(name: "adejoh emmanuel", image:"pic1.jpg" ,
        aboutProject:"We strive to update the contents of "
            "\n our website and tutorials as timely and as precisely as"),
    Place(name: "adejoh john", image:"pic1.jpg" , aboutProject:"We strive to update the contents of "
        "\nour website and tutorials as timely and as precisely as"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:places.length,
        itemBuilder:(BuildContext context, index ) {
          return Card (
            elevation: 4.0,
            margin: EdgeInsets.only(bottom:15.0),
            child: ImageCard(
              name:places[index].name,
              picture:places[index].image,
              aboutProject:places[index].aboutProject,
              place:places[index],
            ),
          );
        });
  }
}

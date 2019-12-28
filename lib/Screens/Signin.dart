import 'package:campus_market_app/widget/CustomBox.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final _width=MediaQuery.of(context).size.width;
    final _height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:Colors.blue ,
      body:SafeArea(
        child: Container(
            width:_width,
            height:_height ,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height:_height*0.10),
                  Text("Wellcome", style: TextStyle(color:Colors.white , fontSize:40),),
                  SizedBox(height:_height*0.10),
                  Text("Take the first into a new world of"
                      " unlimited possibilities",
                    textAlign:TextAlign.center,
                    style: TextStyle(color:Colors.white , fontSize:25),),
                  SizedBox(height:_height*0.10),
                  RaisedButton(
                      color:Colors.white,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0)),
                      child:Padding(
                        padding: const EdgeInsets.only(
                            top:10.0, bottom:10.0,left:30,right:30),
                        child: Text("Get Started",style: TextStyle(fontSize:20,
                            color:Colors.blue, fontWeight: FontWeight.w300),),
                      ),
                      onPressed:(){
                        showDialog(context:context,
                            builder:(BuildContext context)
                            =>CustomBox(
                                title: "would you like to create a free account" ,
                                description: "with an account your data will be securely safe",
                                primaryButtonText: "Create my account",
                                primaryButtonRoute: "/Signup",
                                secondaryButtonText: "maybe later",
                                secondaryButtonRoute: "/home"));
                      } ),
                  SizedBox(height:_height*0.05),
                  FlatButton(
                    child: Text("Sigh In", style: TextStyle(fontSize:20,
                      color:Colors.white,),),
                    onPressed: (){},
                  ),],
              ),
            )
        ),
      ) ,

    );
  }
}

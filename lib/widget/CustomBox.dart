import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title, description,primaryButtonText, primaryButtonRoute,
      secondaryButtonText, secondaryButtonRoute;

  CustomBox({
    @required this.title,
    @required this.description, @required this.primaryButtonText,
    @required this.primaryButtonRoute,
    this.secondaryButtonText,
    this.secondaryButtonRoute,
  });
  static const radius=20.0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(radius)
        ),
        child:Stack(
          children: <Widget>[
            Container(
              padding:EdgeInsets.all(radius),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow:[BoxShadow(
                      color:Colors.black,
                      blurRadius:10.0,
                      offset: const Offset(0.0, 10.0)
                  )]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(title, textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.blue, fontSize:25.0 ),),
                  SizedBox(height:24.0),
                  Text(description, textAlign: TextAlign.center,
                    style:TextStyle(color: Colors.grey, fontSize:18.0 ),),
                  SizedBox(height:24.0),
                  RaisedButton(
                      color:Colors.blue,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0)),
                      child: Text(primaryButtonText,style: TextStyle(fontSize:18,
                          color:Colors.white, fontWeight: FontWeight.w200),),
                      onPressed:(){
                        Navigator.of(context).pop();
                        Navigator.of(context).pushReplacementNamed(primaryButtonRoute);
                      } ),
                  SizedBox(height:10.0),
                  showSecondaryButton(context),

                ],
              ),
            )
          ],
        )
    );
  }

  showSecondaryButton(BuildContext context) {
    if (secondaryButtonText !=null&& secondaryButtonRoute!=null){
      return FlatButton(
        child: Text(secondaryButtonText, style: TextStyle(fontSize:18,
            color:Colors.blue,fontWeight: FontWeight.w300),),
        onPressed: (){
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed(secondaryButtonRoute);
        },
      );}else {
      return SizedBox(height:10.0);
    }
  }
}

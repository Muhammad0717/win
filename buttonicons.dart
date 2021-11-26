import 'package:flutter/material.dart';
class ButtonIcons extends StatelessWidget {
  final  text;
final  textcolor;
final textsize;
final playback;

   // ignore: ouse_key_in_widget_constructors
   const ButtonIcons({this.text, this.textcolor, this.textsize,  this.playback});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70 ,
        height: 70,
        // ignore: deprecated_member_use
        child: FlatButton(
          color: Colors.blueGrey,
          textColor: Colors.white,
          child: Text(text,style: TextStyle(fontSize:25),),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ), onPressed: () {playback(text);  },

        ),
      ),
    );
  }
}


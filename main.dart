import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttonicons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstNum = 0;
  int secondNum= 0;
  String history = '';
  String textToDisplay = '';
  String res =  '';
  String operation = '';

  void btnOnClick(String btnVal){
    print(btnVal);
    if(btnVal == 'C'){
      textToDisplay='';
      firstNum = 0;
      secondNum = 0 ;
       res = '';
    }else if(btnVal == 'AC'){
      textToDisplay='';
      firstNum =0;
      secondNum = 0 ;
      res = '';
      history = '';
    }else if(btnVal =='+/-'){
      if(textToDisplay[0]!='-'){
      res = '-'+textToDisplay;}
      else{
        res = textToDisplay.substring(1);
      }
    }
    else if(btnVal == '<'){
      res=textToDisplay.substring(0,textToDisplay.length-1);
    }
    else if(btnVal =='+' || btnVal== '-' || btnVal == 'x' || btnVal=='/'){
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;

    }else if(btnVal == '='){
      secondNum = int.parse(textToDisplay);
      if(operation == '+'){
res = (firstNum +secondNum).toString();
history = firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation == '-'){
res = (firstNum -secondNum).toString();
history = firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation == 'x'){
res = (firstNum *secondNum).toString();
history = firstNum.toString()+operation.toString()+secondNum.toString();
      }
      if(operation == '/'){
res = (firstNum /secondNum).toString();
history = firstNum.toString()+operation.toString()+secondNum.toString();
      }
    }
  else{
res = int.parse(textToDisplay+btnVal).toString();
    };

  setState(() {
    textToDisplay = res;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
            height: 50,
        margin: EdgeInsets.only(right: 10),
        child:
        Text(history,style:TextStyle(fontSize: 36, color:
        Colors.blueGrey)),
          alignment: Alignment(1.0,1.0),
          ),
          Container(
            height: 40,
        margin: EdgeInsets.only(right: 10),
        child:
        Text(textToDisplay,style: TextStyle(fontSize: 36,color: Colors.black),),
          alignment: Alignment(1.0,1.0),
          ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    ButtonIcons(text: 'AC',
      playback: btnOnClick,
    ),
    ButtonIcons(text: 'C',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '<',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '/',
      playback: btnOnClick,
    ),
    ]
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    ButtonIcons(text: '9',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '8',
      playback: btnOnClick,),
    ButtonIcons(text: '7',
      playback: btnOnClick,
    ),
    ButtonIcons(text: 'x',
      playback: btnOnClick,
    ),
    ]
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    ButtonIcons(text: '6',playback: btnOnClick,
    ),
    ButtonIcons(text: '5',
      playback: btnOnClick,),
    ButtonIcons(text: '4',playback: btnOnClick,
    ),
    ButtonIcons(text: '-',playback: btnOnClick,
    ),
    ]
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    ButtonIcons(text: '3',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '2',
      playback: btnOnClick,),
    ButtonIcons(text: '1',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '+',
      playback: btnOnClick,
    ),
    ]
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    ButtonIcons(text: '+/-',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '0',
      playback: btnOnClick,),
    ButtonIcons(text: '00',
      playback: btnOnClick,
    ),
    ButtonIcons(text: '=',
      playback: btnOnClick,
    ),
    ]
    ),
    ],
    ),
    ),
    );
  }
}



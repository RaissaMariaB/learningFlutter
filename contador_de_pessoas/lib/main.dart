import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      title: "contador de pessoas",
      home: Home()
      
      )
      );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  
}
   
class _HomeState extends State<Home> {

    int _people = 0;
    String _info = "pode entrar!";

    void changePeople(int change){
      setState(() {
        
        _people += change;

        if( _people < 0 ){
          _info = "mundo invertido!";
        } else if(_people <= 10){
            _info = "pode entrar!";
        }else{
          _info = "lotado!";
        };
    });
}

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset(
            "image/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pessoas: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                FlatButton(
                  child: Text("+1",
                  style:
                  TextStyle(fontSize: 40.0, 
                  color: Colors.white)),
                  onPressed: () {
                    changePeople(1);
                     },
                ), 
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:
                FlatButton(
                  child: Text("-1",
                  style:
                  TextStyle(fontSize: 40.0, 
                  color: Colors.white)),
                  onPressed: () {
                    changePeople(-1);
                     },
                ), 
              )    
            ],
          ),
          Text( _info ,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0))
        ],
      )
        ],);
  }
}


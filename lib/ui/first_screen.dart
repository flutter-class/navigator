import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen>{
  String data='no data';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: RaisedButton(
                    child: Text('seccond screen',style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
                      _showMessage(context);
                    },
                  ),
                ),
                Center(
                  child: Text(data==null ?'':data),
                )
              ],
            ),
          )
      ),
    );
  }
  
  _showMessage(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
    //final result = await Navigator.pushNamed(context, '/second');
    setState(() {
      data=result;
    });

  }
  
}

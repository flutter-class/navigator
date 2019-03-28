import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SecondScreenState();
  }
}
class SecondScreenState extends State<SecondScreen>{

  TextEditingController _controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText:'enter here ...'
                  ),
                ),
                SizedBox(height: 8.0,),
                RaisedButton(
                  child: Text('save',style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    Navigator.pop(context,_controller.value.text);
                  },
                )
              ],
            ),
          )
      ),
    );
  }
}
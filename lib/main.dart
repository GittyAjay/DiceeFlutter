import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dicee'),),
        backgroundColor: Colors.red,
      ),
      body: Container(
          color: Colors.red,
          child: widget()
      ),
    ),
  ));
}
class widget extends StatefulWidget {
  @override
  _widgetState createState() => _widgetState();
}

class _widgetState extends State<widget> {
  var left=1,right=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                    left++;
                    if(left==7)
                      left=1;
                });
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  right++;
                  if(right==7)
                    right=1;
                });
              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}


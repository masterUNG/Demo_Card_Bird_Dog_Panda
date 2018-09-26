import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myText = new Text('MasterUNG');
    var imageStrings = ['image/bird.png', 'image/dog.png', 'image/padda.png'];
    var nameStrings = ['Bird', 'Dog', 'Panda'];
    var myCard1 = new Card(
      color: Colors.redAccent,
      child: Column(
        children: <Widget>[Image.asset(imageStrings[0]), Text(nameStrings[0])],
      ),
    );
    var myCard2 = new Card(
      color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[Image.asset(imageStrings[1]), Text(nameStrings[1])],
      ),
    );
    var myCard3 = new Card(
      color: Colors.greenAccent,
      child: Column(
        children: <Widget>[Image.asset(imageStrings[2]), Text(nameStrings[2])],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: myText,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[myCard1, myCard2, myCard3],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[myCard3, myCard1],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[myCard2, myCard1],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[myCard2],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

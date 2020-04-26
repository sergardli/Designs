import 'dart:math';

import 'package:flutter/material.dart';


class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _createTable(),


              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }


  Widget _background() {

    final _backgroundGradient = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ] 
        )
      ),
    );


    final _pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ]
          )
        ),
      ),
    ); 
    

    return Stack(
      children: <Widget>[
        _backgroundGradient,
        Positioned(
          top: -100,
          child: _pinkBox,
        ),
      ],
    );


  }


  Widget _titles() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all( 20 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text( "Classify Transaction", style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold ) ),
            SizedBox( height: 10.0 ),
            Text( "Classify this transaction into a particular category", style: TextStyle( color: Colors.white, fontSize: 18.0 ) ),
            
          ],
        ),
      ),
    );
  }


  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pink,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) )
        )
      ),

      child: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.category )
          ),

          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.child_friendly )
          ),

          BottomNavigationBarItem(
            title: Container(),
            icon: Icon( Icons.content_cut )
          ),
        ]
      )
    );
  }


  Widget _createTable() {
    return Table(
      children: [
        TableRow(
          children: [
            _createButton(),
            _createButton()
          ]
        ),

        TableRow(
          children: [
            _createButton(),
            _createButton()
          ]
        ),
        
        TableRow(
          children: [
           _createButton(),
           _createButton()
          ]
        ),

        TableRow(
          children: [
            _createButton(),
            _createButton()
          ]
        ),
      ],
    );
  }


  Widget _createButton() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all( 15.0 ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 1.0),
        borderRadius: BorderRadius.circular( 20.0 )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 5.0),
          CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 35.0,
            child: Icon( Icons.swap_calls, color: Colors.white, size: 30.0),
          ),
          Text('Cosa', style: TextStyle( color: Colors.pinkAccent )),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}
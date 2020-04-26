import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(),
        ],
      ),
    );
  }


  Widget _page1() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _texts(),

      ],
    );
  }


  Widget _page2() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _createButton(),
      ],
    );
  }


  Widget _backgroundColor() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(79, 193, 221, 1),
    );
  }


  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/original.png'),
        fit: BoxFit.cover,
      ),
    );
  }


  Widget _texts() {

    final style = TextStyle(color: Colors.white, fontSize: 40);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),

          Text('15º', style: style),
          Text('Lunes', style: style),

          Expanded(child: Container()),

          Icon( Icons.keyboard_arrow_down, color: Colors.white, size: 70.0),
        ],
      ),
    );
  }


  Widget _createButton() {
    return Center(
      child: Container(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.white,
          textColor: Color.fromRGBO(79, 193, 221, 1),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text('Bienvenido', style: TextStyle(fontSize: 20)),
          ),
          
          onPressed: () {}, 
        ),
      ),
    );
  }

}
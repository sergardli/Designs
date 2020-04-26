import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {
  
  final _styleTitle = TextStyle( fontSize: 18.0,  );
  final _styleSubTitle = TextStyle( fontSize: 16.0, color: Colors.grey );
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),

          ],
        ),
      ),
    );
  }


  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image (
        image: NetworkImage( 'https://cdn.pixabay.com/photo/2019/03/08/15/05/landscape-4042502_960_720.jpg' ),
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0 ),

        child: Row(
          children: <Widget>[
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Picos de Europa, Asturias', style: _styleTitle),
                  Text('Norte de España', style: _styleSubTitle),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 28 ),
            Text( '41', style: TextStyle(fontSize: 18) )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _createAction(Icons.call, 'CALL'),
          _createAction(Icons.near_me, 'ROUTE'),
          _createAction(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40),
        Text( text, style: TextStyle(color: Colors.blue, fontSize: 15) )
      ],
    );
  }

  Widget _createDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Text(
        'Do in incididunt enim elit aliquip tempor eiusmod officia aliquip cillum voluptate enim labore. Cupidatat voluptate minim magna culpa ipsum. Laborum reprehenderit laboris quis esse velit velit voluptate reprehenderit aliqua enim voluptate Lorem. Anim quis irure non et elit cillum laboris aliquip pariatur irure anim ea. Minim sit ullamco commodo deserunt. Cillum deserunt adipisicing aliquip aute tempor. Reprehenderit sint adipisicing ut magna non ut veniam eu.',
        textAlign: TextAlign.justify,
      ),
    );
  }

}
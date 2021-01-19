import 'package:ListView/planet.dart';
import 'package:flutter/material.dart';

class PlanetList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final planetList = Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          PlanetImage('assets/img/earth.jpg'),
          PlanetImage('assets/img/earth.jpg'),
          PlanetImage('assets/img/earth.jpg'),
          PlanetImage('assets/img/earth.jpg')
        ],
      ),
    );
    return planetList;
  }

}
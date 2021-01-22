import 'package:ListView/planet.dart';
import 'package:ListView/planet_info.dart';
import 'package:flutter/material.dart';

class PlanetList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final planetList = Column(
      children: [
        PlanetInfo('assets/img/earth.jpg', 'Earth', '1 Satelit 129 Artificial', false)
      ],
    );
    return planetList;
  }

}
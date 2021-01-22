import 'package:flutter/material.dart';

class PlanetInfo extends StatelessWidget{

  String image;
  String name;
  String relevantInfo;
  bool news;

  PlanetInfo(this.image, this.name, this.relevantInfo, this.news);

  @override
  Widget build(BuildContext context) {
    final satelit = Container(
      width: 16.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
    );

    final planetName = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final info = Container(
      margin:EdgeInsets.only(
        left: 20.0,
        top: 10.0,
      ),
      child: Text(
        relevantInfo,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      )
    );

    final planet = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        planetName,
        info,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 12.0,
        left: 15.0
      ),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image)
        )
      ),
    );

    return Row(
      children: [
        photo,
        planet
      ],
    );
  }

}
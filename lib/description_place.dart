import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String title;
  int stars;
  String description;

  DescriptionPlace(this.title, this.stars, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final title = Container(
      margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
      child: Text(
        this.title,
        style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
        textAlign: TextAlign.left,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );

    final empty_star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );

    final stars = Row(
      children: <Widget>[star, star, star, star, empty_star],
    );

    final description = Container (
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text (
        this.description,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final titleStars = Row(
      children: <Widget>[title, stars],
    );

    return Column(
      children: <Widget>[
        titleStars, description
      ],
    );
  }
}

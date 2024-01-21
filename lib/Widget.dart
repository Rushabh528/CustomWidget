import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final color;
  final title;
  final Image;
  final quote;

  const Card1(
      {super.key, required this.color, this.title, this.Image, this.quote});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8),
              child: Text(
                title,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 180.0, right: 500, left: 10, bottom: 10),
              child: Container(
                color: color,
                height: 70,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    quote,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({
    Key? key,
    required this.namePlace,
    required this.stars,
    required this.descriptionPlace,
  }) : super(key: key);

  final String namePlace;
  final int stars;
  final String descriptionPlace;

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xffF2C716),
        size: 18,
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xffF2C716),
        size: 18,
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xffA7A9AC),
        size: 18,
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 270,
            left: 20,
            right: 20,
          ),
          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        ),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff6D6E71),
        ),
        textAlign: TextAlign.left,
      ),
    );

   return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    titleStars,
    description,
    const ButtonPurple(buttonText: 'Navigate'),
    const SizedBox(height: 8), // Espacio entre el botón y el texto
    const Text(
      'All reviews',
      style: TextStyle(
        fontSize: 16, // Tamaño de fuente ajustable según necesidad
        fontWeight: FontWeight.bold, // Opciones para darle más énfasis al texto
        color: Colors.black, // Color ajustable según diseño
      ),
    ),
  ],
);

  }
}
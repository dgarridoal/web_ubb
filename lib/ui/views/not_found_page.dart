import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NotFoundPageView extends StatelessWidget {
  const NotFoundPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      //TODO: Add json animado con algo de no encontrado
      child: Text(
        'Página no encontrada',
        style: GoogleFonts.montserratAlternates(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

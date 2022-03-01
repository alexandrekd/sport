import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sport/main.dart';

class WorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Workout",
        style: GoogleFonts.poppins(
          color: d_red,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

}
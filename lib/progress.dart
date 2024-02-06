import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircularPercentIndicator(
                                  radius: 110,
                                  lineWidth: 10,
                                  percent: 0.12,
                                  startAngle: 15,
                                  progressColor: const Color.fromARGB(182, 209, 154, 243),
                                  backgroundColor:  const Color.fromARGB(192, 134, 199, 157), 
                                  circularStrokeCap: CircularStrokeCap.round,
                                 center:  Text("12.2%",
                                 style: GoogleFonts.leagueSpartan(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),
                                  
                                 ),
                                 
                                 
                                 );
  }
}
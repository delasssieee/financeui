import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rows extends StatelessWidget {
  final String word;
  final String text;
  final TextStyle fonts;
  const Rows({super.key , required this.fonts,required this.text, required this.word,});

  @override
  Widget build(BuildContext context) {
    return   Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                           Text(word,
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                   Text(text,
                                  style: fonts,),
                                        ],
                                      );
  }
}
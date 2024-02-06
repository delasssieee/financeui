import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastBox extends StatelessWidget {
  final String command;
  const LastBox({super.key, required this.command});

  @override
  Widget build(BuildContext context) {
    return Container(
                                  width: 390,
                                  height: 50,
                                decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color:  const Color.fromARGB(240, 179, 155, 209),

                                 ),
                                 child: Center(
                                  child: Text(command,
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                 ),
                                 );
  }
}
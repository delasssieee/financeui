import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Overview extends StatelessWidget {
  final String picture;
  final String text;
  final String text1;
  final Color boxcolor;
  final Color colour;
  final Icon sign;

  const Overview({super.key, required this.picture, required this.text, required this.text1, required this.boxcolor, required this.colour, required this.sign});

  @override
  Widget build(BuildContext context) {
    return  Container(
                               width: 183,
                               height: 120,
                               decoration:  BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                                 color: const Color.fromARGB(22, 179, 178, 178),
                               ),
                               child:Padding(padding: const EdgeInsets.only(top: 15, left: 10),
                               child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Row(
                                    children: [
                                      Container(
                               width: 50,
                               height: 50,
                               decoration:  BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                                 color:boxcolor
                               ),
                               child: Center(
                                child: Image.asset(picture,
                                height: 20, width: 20,
                                color: colour
                                ),
                               ),
                             ),
                             const SizedBox(width: 15,),
                             Text(text,
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                    ],
                                   ),
                             const SizedBox(height: 15,),
                              Row(
                                children: [
                                   sign,
                                   
                                  Text("\$",
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),

                                  Text(text1,
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                ],
                              )
                                ],
                               ),)
                               
                             );
  }
}
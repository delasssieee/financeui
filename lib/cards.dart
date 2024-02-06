import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Caerds extends StatelessWidget {
  final String picture;
  final String text;
  final double height;
  final double width;
  const Caerds({super.key, required this.picture, required this.text, required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return  Container(
                               width: width,
                               height: height,
                               decoration:  BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                                 color: const Color.fromARGB(22, 179, 178, 178),
                               ),
                               child:Padding(padding: const EdgeInsets.only(top: 15, left: 10),
                               child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Container(
                               width: 55,
                               height: 55,
                               decoration:  BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                                 color:const Color.fromARGB(64, 211, 193, 233)
                               ),
                               child: Center(
                                child: Image.asset(picture,
                                height: 27, width: 27,
                                color: Colors.black,),
                               ),
                             ),
                             const SizedBox(height: 15,),
                              Text(text,
                                  style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                ],
                               ),)
                               
                             );
                        
  }
}
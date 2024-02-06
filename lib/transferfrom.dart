import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                               width: 390,
                               height: 130,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: const Color.fromARGB(22, 179, 178, 178),),
                                 child:Padding(padding: const EdgeInsets.only(top: 25, left: 20, right: 15),
                                 child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Text("Transfer From",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                  const SizedBox(height: 15,),
                                  Row(
                                    children: [
                                      Container(
                               width: 55,
                               height: 55,
                               decoration:  const BoxDecoration(
                               shape: BoxShape.circle,
                                 color:Color.fromARGB(64, 211, 193, 233)
                               ),
                               child: Center(
                                child: Image.asset("lib/assets/card.png",
                                height: 27, width: 27,
                                color: Colors.black,),
                               ),
                             ),
                             const SizedBox(width: 15,),
                             Column(
                              children: [
                                  Text("Personal Account",
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                  
                                  Row(
                                    children: [
                                      Text("···· ···· ",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3)
                                  ),),
                                   Text("2727",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black
                                  ),),
                                    ],
                                  )
                              ],
                             ),
                             const SizedBox(width: 95,),
                              Image.asset("lib/assets/pngwing.com.png",
                              height: 35,width: 35,),
                              const SizedBox(width: 5,),
                               Image.asset("lib/assets/g.png",
                                   height: 14, width: 14,
                                  )
                                    ],

                                  )
                                   
                                  ],
                                 )),
                                 )
            ;
  }
}
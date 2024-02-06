import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                               width: 390,
                               height: 190,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color:const Color.fromARGB(207, 179, 155, 209)
                               ),
                               child: Padding(padding: const EdgeInsets.only(top: 25 ,left: 20),
                               child:  Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Your Balance",
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                  ),),
                                  const SizedBox(height: 7,),
                                 Row(
                                  children: [
                                     Text("\$",
                                  style: GoogleFonts.raleway(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(229, 35, 35, 35)
                                  ),),
                                   Text("26,172.50  ",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(229, 35, 35, 35),
                                  ),),
                                   const SizedBox(width: 140,),
                              Image.asset("lib/assets/pngwing.com.png",
                              height: 50,width: 50,)
                                
                                  ],
                                 ),
                                 const SizedBox(height: 20,),
                                   Row(
                                  children: [
                                     Text("Acount Number",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3)
                                  ),),
                                  const SizedBox(width: 140,),
                                   Text("Expiry date",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3),
                                  ),),
                                   
                             
                                
                                  ],
                                 ),
                                 
                                  Row(
                                  children: [
                                     Text("···· ···· ",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3)
                                  ),),
                                   Text("2727 ",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3)
                                  ),),
                                  const SizedBox(width: 140,),
                                   Text("12/12/2027",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 3, 3, 3),
                                  ),),
                                   
                             
                                
                                  ],
                                 )
                                ],
                               ),
                               )
                               
                               
                             );
  }
}
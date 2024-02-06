import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpBar extends StatelessWidget {
  const UpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                               width: 390,
                               height: 280,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: const Color.fromARGB(22, 179, 178, 178),),
                                 child:Padding(padding: const EdgeInsets.only(top: 25, left: 20, right: 15),
                                 child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text("Transfer To",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                   const SizedBox(height: 15,),
                                    Row(
                                    children: [
                                       const CircleAvatar(
                                   backgroundImage: AssetImage("lib/assets/IMG_1288.JPG"),
                                   radius: 23,
                                   ),
                                   const SizedBox(width: 10,),
                                   Column(
                                    children: [
                                      Text("Emerson Philips",
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                  const SizedBox(height: 5,),
                                   Text("AEx-000012895362",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black
                                  ),),
                                    ],
                                   ),
                                   const SizedBox(width: 88,),
                                   Container(
                                    height: 35,
                                    width: 85,
                                   decoration: BoxDecoration(
                                     color: const Color.fromARGB(207, 179, 155, 209),
                                     borderRadius: BorderRadius.circular(20)
                                   ),
                                   child: Center(
                                    child: Text("Change",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                   ),
                                   )
                                   
                                    ],
                                   ),
                                   const SizedBox(height: 40,),
                                   Text("Transfer Amount",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                   const SizedBox(height: 40,),
                                   Container(
                                    height: 50,
                                    width: 355,
                                   decoration: BoxDecoration(
                                     color: const Color.fromARGB(207, 255, 255, 255),
                                     borderRadius: BorderRadius.circular(25)
                                   ),
                                   child: Row(
                                    children: [
                                      const SizedBox(width: 17,),
                                       Text("\$",
                                  style: GoogleFonts.nunito(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                       Text("172.00",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                  const SizedBox(width: 205,),
                                  Image.asset("lib/assets/edit.png",
                                  height: 27, width: 27,)
                                    ],
                                   )
                                   )
                                  ],
                                 )),
                                 )
    ;
  }
}
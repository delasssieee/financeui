
import 'package:financeui/lines.dart';
import 'package:financeui/rows.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                                    width: 365,
                                    height: 460,
                                   
                                   decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                     color: const Color.fromARGB(255, 255, 255, 255),
                                   ),
                                   child: Column(
                                    children: [
                                      Padding(padding: const EdgeInsets.only(top: 25,left: 15, right: 15),
                                   child: Column(
                                    children: [
                                    Rows(fonts: GoogleFonts.leagueSpartan(
                                     fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                    ), 
                                    text: "\$172.00", word: "Amount"),
                                    const SizedBox(height: 10,),

                                    Rows(fonts: GoogleFonts.raleway(
                                     fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                    ), 
                                    text: "Emerson Philips", word: "To"),
                                    const SizedBox(height: 10,),
                                    
                                    Rows(fonts: GoogleFonts.raleway(
                                     fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 60, 123, 84)
                                    ), 
                                    text: "Success", word: "Payment Status"),
                                    const SizedBox(height: 40,),
                                   
                                    ],
                                    
                                   ),
                                   ),
                                  const CustomDivider(),

                                   Padding(padding: const EdgeInsets.only(top: 35,left: 15, right: 15),
                                   child: Column(
                                    children: [
                                    Rows(fonts: GoogleFonts.leagueSpartan(
                                     fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                    ), 
                                    text: "000012895362", word: "Ref Number"),
                                    const SizedBox(height: 10,),

                                    Rows(fonts: GoogleFonts.raleway(
                                     fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                    ), 
                                    text: "Bank Transfer", word: "Payment method"),
                                    const SizedBox(height: 10,),
                                    
                                    Rows(fonts: GoogleFonts.leagueSpartan(
                                     fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 46, 46, 46)
                                    ), 
                                    text: "Wed,10 Jan 2024 ", word: "Date"),
                                    const SizedBox(height: 10,),


                                    Rows(fonts: GoogleFonts.leagueSpartan(
                                     fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 46, 46, 46)
                                    ), 
                                    text: "16:45:24", word: "Time"),
                                    const SizedBox(height: 40,),
                                    
                                   
                                    ],
                                    
                                   ),
                                   ),
                                   const CustomDivider(),
                                      
                                    Padding(padding: const EdgeInsets.only(left:15, right: 15,top: 45,bottom: 10),
                                    child: Row(
                                      children: [
                                        
                                     Container(
                                      height: 45,
                                      width: 290,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                          width: 0.4,
                                          color: const Color.fromARGB(152, 158, 158, 158)
                                        )
                                      ),
                                      child: Center(
                                        child: Text("Get PDF Receipt ",
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                      ),
                                     ), 
                                     const SizedBox(width: 5,),
                                     Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                          width: 0.4,
                                          color: const Color.fromARGB(152, 158, 158, 158)
                                        )
                                        ),
                                      child:Center(
                                       child:  Image.asset("lib/assets/share.png",
                                       height:22,width: 22,),
                                        ),
                                       )
                                      ],
                                    ),),
                                     
                                     
                                    ],
                                   )
                                  );
  }
}
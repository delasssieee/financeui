
import 'package:financeui/lastbox.dart';
import 'package:financeui/mainpage.dart';
import 'package:financeui/receipt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     // ignore: sized_box_for_whitespace
     Container(
      height: 835,
      child: Column(
        children: [
         Padding(padding: const EdgeInsets.only(top: 45),
         child: Center(
          child:  Container(
                               width: 80,
                               height: 80,
                               decoration:  const BoxDecoration(
                               shape: BoxShape.circle,
                                 color:Color.fromARGB(64, 202, 228, 208)
                               ),
                               child: Center(
                                child: Image.asset("lib/assets/v.png",
                                height: 63, width: 63,
                                ),
                               ),
                             ),
                             ),),
                             const SizedBox(height: 20,),
                            Text("Payment Success!",
                                  style: GoogleFonts.raleway(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                   const SizedBox(height: 10,),
                                   Text("Your payment has been successfully done. ",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                  const SizedBox(height: 40,),
                                  const Receipt(),
                                  const SizedBox(height: 30,),
                                    GestureDetector(
                                      onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
                                      },
                                      child:  const LastBox(command: "Back to Home",),
                                    )
                                  
        ],
      ),
    );
   
  }
}
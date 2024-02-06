import 'package:financeui/balance.dart';
import 'package:financeui/bottombar.dart';
import 'package:financeui/cards.dart';
import 'package:financeui/circles.dart';
import 'package:financeui/overview.dart';
import 'package:financeui/progress.dart';
import 'package:financeui/transferpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: Stack(
        children: [
           Positioned(
            top: 90, right: 31,
                child:  Container(
                               width: 20,
                               height: 20,
                               decoration: const BoxDecoration(
                                 shape: BoxShape.circle,
                                 color:Color.fromARGB(255, 248, 45, 45)
                               ),
                               child:const Center(
                                 child:Text("4",
                                 style: TextStyle(fontSize: 15,color: Colors.white),)
                               ),
                               
                             ),),
                              Positioned(
                             bottom: 5, right: 60,
                              child:  Container(
                               width: 70,
                               height: 22,
                               decoration:  BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.circular(5) ,
                                 border: Border.all(
                                  width: 0.5,
                                  color: Colors.grey
                                 ),
                                 color:const Color.fromARGB(255, 249, 247, 247)
                               ),
                               child:Center(
                                 child:Text("\$2,126.00",
                                 style:GoogleFonts.leagueSpartan(fontSize: 12,color: Colors.black),)
                               ),
                               
                             ),),

            SingleChildScrollView(
          child: Column(
           children: [
            const Padding(padding: EdgeInsets.only(top: 90, left: 20),
            child:  Row(
              children: [
               
            
                 CircleAvatar(
              backgroundImage: AssetImage("lib/assets/him.jpeg"),
              radius: 23,
            ),
                
            SizedBox(width: 230,),
           
           Circles(asset: "lib/assets/b.png"),
            SizedBox(width: 10,),
            Circles(asset: "lib/assets/workout.png")
            
              ]
            ),
          ),
          const SizedBox(height: 40,),

          const Balance(),
         
         const SizedBox(height: 20,),
        
                        Padding(padding: const EdgeInsets.only(left: 20),
                       child: Row(
                        children: [
                         GestureDetector(
                          child:  const Caerds(picture: "lib/assets/credit-card.png",text: "Send Money",width: 155, height: 120,),
                          onTap: () {
                            Navigator.push(
              context, MaterialPageRoute(builder: (context)=> const TransferPage())
             );
                          },
                         ),
                          const SizedBox(width: 15,),
                          const Caerds(picture: "lib/assets/receive-money.png", text: "Add Money", width: 165, height: 120,),

                          const SizedBox(width: 10,),
                          const Column(
                            children: [
                              Circles(asset: "lib/assets/qr-code-138-64.png"),
                              SizedBox(height: 10,),
                              Circles(asset: "lib/assets/more.png"),
                            ],
                          )
                        ],
                       ),
                       ),
                      //  const SizedBox(height: 35,),
                         Padding(padding: const EdgeInsets.only(left: 22, right: 20, top: 28),
                         child: Row(
                          
                        children: [
                           Text("Overview ",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(229, 35, 35, 35),
                                  ),),
                                  const SizedBox(width: 150,),
                                  Text("Monthly",
                                  style: GoogleFonts.leagueSpartan(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 151, 102, 236),
                                  ),),
                                   const SizedBox(width: 7,),
                                   Image.asset("lib/assets/g.png",
                                   height: 14, width: 14,
                                   color:  const Color.fromARGB(227, 148, 101, 230),)
                        ],
                       ),),
                       const Padding(padding: EdgeInsets.only(left: 23, right: 23, top: 10),
                       child: Row(
                        children: [
                         Overview(picture: "lib/assets/down-right.png", text: "Income", text1: "6,072.00",boxcolor: Color.fromARGB(68, 87, 185, 90),colour: Color.fromARGB(255, 87, 185, 91),sign: Icon(Icons.add),),
                         SizedBox(width: 15,),
                         Overview(picture: "lib/assets/outward.png", text: "Spending", text1: "2,831.90",boxcolor: Color.fromARGB(75, 228, 80, 69),colour: Color.fromARGB(255, 185, 87, 87),sign: Icon(Icons.remove),),
                        ],
                       ),),
              const SizedBox(height: 10,),
               Container(
                               width: 390,
                               height: 370,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: const Color.fromARGB(22, 179, 178, 178),),
                                 child:Padding(padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                                 child:  Column(
                                  children: [
                                    Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("Monthly Overview",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                   Text("More Details",
                                  style: GoogleFonts.raleway(
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color.fromARGB(255, 147, 92, 243), 
                                    decorationThickness: 2,
                                    
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color:  const Color.fromARGB(255, 147, 92, 243),
                                  ),),
                                  ],
                                 ),
                                   const SizedBox(height: 20,),
                                   const Progress()
                                  ],
                                 )),
                                 ),
            
           ],
          
        )),
        ],
      )
    );
  }
}
import 'package:financeui/lastbox.dart';
import 'package:financeui/mainpage.dart';
import 'package:financeui/popup.dart';
import 'package:financeui/transferfrom.dart';
import 'package:financeui/upbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
   bool switchValue =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        leading: Padding(padding: const EdgeInsets.only(left: 20, top: 20),
        child:GestureDetector(
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
          },
          child:  Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(23, 158, 158, 158)
              ),
              child:const Center(
                child:  Icon(Icons.keyboard_arrow_left_outlined,
              ),
              ),
             ),
        )),
             title:Padding(padding: const EdgeInsets.only(top: 20),
             child:  Text("Transfer",
                                  style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    
                                  ),),
      ),
             ),
      body:    Padding(padding: const EdgeInsets.only(left: 20,top: 50,right: 20),
                  child: Column(
                    
                   children: [
                   const UpBar(),
                   const SizedBox(height: 30,),
                   const Transfer(),
                   const SizedBox(height: 25,),
                    Container(
                               width: 390,
                               height: 90,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: const Color.fromARGB(22, 179, 178, 178),),
                                 child:Padding(padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                                 child:  Column(
                                  children: [
                                   Container(
                                    height: 50,
                                    width: 355,
                                   decoration: BoxDecoration(
                                     color: const Color.fromARGB(207, 255, 255, 255),
                                     borderRadius: BorderRadius.circular(25)
                                   ),
                                   child:Padding(padding: const EdgeInsets.only(left: 20,right: 19),
                                   child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     
                                       Text("Add Notes(Optional)",
                                  style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                  
                                  Image.asset("lib/assets/e.png",
                                  color:  Colors.grey,
                                  height: 25, width: 25,)
                                    ],
                                   ),)
                                   ),
                                   
                                  ],
                                 )),
                                 ),
                                 const SizedBox(height: 25,),
                                  Container(
                               width: 390,
                               height: 55,
                               decoration:  BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                 color: const Color.fromARGB(22, 179, 178, 178),),
                                 child:Padding(padding: const EdgeInsets.only(left: 20,right: 20),
                                 child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("Save account number",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  ),),
                                    Switch(
                                      value: switchValue, 
                                      activeColor:const Color.fromARGB(53, 179, 155, 209) ,
                                       


                                      thumbColor:MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                     if (states.contains(MaterialState.disabled)) {
                                     return const Color.fromARGB(94, 161, 105, 210).withOpacity(.48);
                                     }
                                      return const Color.fromARGB(240, 179, 155, 209);
                                    }),  
                                   
                                      onChanged: (newValue){
                                 setState(() {
                                switchValue = newValue;
            
                                });
                                })
                                  
                                  ],)
                                 )
                                 ),
                                 const SizedBox(height: 25,),
                              GestureDetector(
                                onTap: () {
                                   showModalBottomSheet(context: context, 
                                   isScrollControlled: true,
                               builder:(BuildContext context){
                               return const PopUp();
                          }
                          );
                                },
                                child: const LastBox(command: "Transfer Now"),
                              )

            
        ],
      ),
      )
    );
  }
} 
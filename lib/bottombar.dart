import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



 class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    
         return BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          type: BottomNavigationBarType.fixed,
      items: [
          
             BottomNavigationBarItem(
              
              icon: GestureDetector(
                onTap: (){
                    
                },
                child:Column(
                  children: [
                     Image.asset("lib/assets/home.png",
                height: 25,
                width: 25,
                color:const Color.fromARGB(225, 102, 64, 172),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Text("Home",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  color:  const Color.fromARGB(161, 0, 0, 0),
                  fontSize: 12
                ),)
                  ],
                )
              ),
             label: ""
            ), 
            
            BottomNavigationBarItem(
               icon: GestureDetector(
                onTap: (){
                   },
                child:Column(
                  children: [
                     Image.asset("lib/assets/infringement-analysis-64.png",
                height: 25,
                width: 25,
                color: Colors.grey
                ),
                
                Text("Analitycs",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 12
                ),)
                  ],
                )
              ),
             label: ""
            ), 
              


           
            
            

             BottomNavigationBarItem(
              icon:  GestureDetector(
                onTap: (){
                   },
                child:Column(
                  children: [
                     Image.asset("lib/assets/card.png",
                height: 25,
                width: 25,
                color: Colors.grey,
                ),
                
                Text("Card",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  color:  Colors.grey,
                  fontSize: 12
                ),)
                  ],
                )
              ),
             label: ""
            ), 

             BottomNavigationBarItem(
              icon:  GestureDetector(
                onTap: (){
                   },
                child:Column(
                  children: [
                     Image.asset("lib/assets/h.png",
                height: 25,
                width: 25,
                color: Colors.grey,
                ),
                
                Text("Settings",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 12
                ),)
                  ],
                )
              ),
             label: ""
            ), 


          ]

    );
  }
}
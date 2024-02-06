import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final String asset;
  const Circles({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(23, 158, 158, 158)
              ),
              child:Center(
                child:  Image.asset(asset,
              height:22,width: 22,),
              ),
             );
  }
}
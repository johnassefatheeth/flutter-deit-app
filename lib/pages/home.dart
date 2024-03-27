import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          leading: Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.all(10) ,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Colors.white ,
              borderRadius: BorderRadius.circular(10)
            ), 
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg',
              height: 20,
              width: 20,
              color: Colors.purple,)
          ),
      ) ,
    );
  }
}
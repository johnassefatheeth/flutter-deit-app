import 'package:flutter/material.dart';


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
            margin: EdgeInsets.all(10) ,
            decoration: BoxDecoration(
              color:Colors.white ,
              borderRadius: BorderRadius.circular(10)
            ) 
          ),
      ) ,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body:  Column(
        children: [
          search()
        ],
      ),
    );
  }

  Container search() {
    return Container(
          margin:const EdgeInsets.only(left:25,right:25,top: 15),
          decoration: BoxDecoration(
            boxShadow:[ 
              BoxShadow(
              color: Colors.purple.withOpacity(0.31),
              blurRadius: 40,
              spreadRadius: 0.0
            )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding:const  EdgeInsets.all(15),
              hintText: 'search pancake',
              hintStyle: const TextStyle(
                color: Colors.purple,
                
                ),
              prefixIcon:Padding(
                padding:const EdgeInsets.all(12),
                child:SvgPicture.asset('assets/icons/Search.svg',color: Colors.purple,) ,
              ) ,
              suffixIcon:Container(
                width: 100,
                child: IntrinsicHeight(
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.purple,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding:const EdgeInsets.all(12),
                      child:SvgPicture.asset('assets/icons/Filter.svg',color: Colors.purple,) ,
                    ),
                  ],
                  )
                ),
              ) ,
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              ),
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
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
        leading: GestureDetector(
          onTap: (){
            
          },
          child: Container(
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
        )),
        actions: [
          GestureDetector(
            onTap: (){

            },
          child:Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(10) ,
          alignment: Alignment.center,
          width: 37,
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(10)
          ), 
          child: SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 5,
            width: 5,
            color: Colors.purple,)
        )
        )
        ],
    );
  }
}
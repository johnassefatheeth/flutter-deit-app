import 'package:flutter/material.dart';

 class CatagoryModel{
  String name;
  String iconpath;
  Color boxColor;  


  CatagoryModel({
    required  this.name,
    required this.iconpath,
    required this.boxColor
  });


  static List<CatagoryModel> getCatagories(){
    // ignore: non_constant_identifier_names
    List<CatagoryModel> Catagories=[];

    Catagories.add(
      CatagoryModel(
      name: 'breakfeast', 
      iconpath: 'assets/icons/plate.svg', 
      boxColor: const Color.fromRGBO(69, 145, 220, 0.716)
      )
    );
    Catagories.add(
      CatagoryModel(
      name: 'lunch', 
      iconpath: 'assets/icons/pancakes.svg', 
      boxColor: Color.fromARGB(182, 69, 220, 218)
      )
    );
    Catagories.add(
      CatagoryModel(
      name: 'diner', 
      iconpath: 'assets/icons/pie.svg', 
      boxColor: Color.fromARGB(182, 45, 55, 148)
      )
    );
    Catagories.add(
      CatagoryModel(
      name: 'desert', 
      iconpath: 'assets/icons/orange-snacks.svg', 
      boxColor: const Color.fromRGBO(69, 145, 220, 0.716)
      )
      );


    return Catagories;
  }

}
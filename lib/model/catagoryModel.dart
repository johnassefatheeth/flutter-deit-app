import 'package:flutter/material.dart';

class CatagoryModel{
  String? name;
  String? iconpath;
  Color? boxColor;  


  CatagoryModel({
    required  this.name,
    required this.iconpath,
    required this.boxColor
  });


  List<CatagoryModel> getCatagories(){
    List<CatagoryModel> Catagories=[];

    Catagories.add(
      CatagoryModel(
      name: 'breakfeast', 
      iconpath: 'assets/icons/plate', 
      boxColor: const Color.fromRGBO(69, 145, 220, 0.716)
      )
    );
    Catagories.add(
      CatagoryModel(
      name: 'breakfeast', 
      iconpath: 'assets/icons/plate', 
      boxColor: const Color.fromRGBO(69, 145, 220, 0.716)
      )
    );
    Catagories.add(
      CatagoryModel(
      name: 'breakfeast', 
      iconpath: 'assets/icons/plate', 
      boxColor: const Color.fromRGBO(69, 145, 220, 0.716)
      )
    );


    return Catagories;
  }

}
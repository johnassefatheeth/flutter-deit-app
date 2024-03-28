import 'package:flut/model/catagoryModel.dart';
import 'package:flut/model/deitRecomendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <CatagoryModel> catagories=[];
  List <DeitModel> Deits=[];

  void getCatagories(){
    catagories= CatagoryModel.getCatagories();
  }

  void getDeits(){
    Deits=DeitModel.getDeits();
  }

  @override
  Widget build(BuildContext context) {
    getCatagories();
    getDeits();
    return Scaffold(
      appBar: appBar(),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          search(),
          catagorySection()
        ],
      ),
    );
  }

  Column catagorySection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20,bottom: 20),
              child: Text(
                'catagory',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
              Container(
                height: 120,
                child: ListView.separated(
                  itemCount: catagories.length,
                  scrollDirection: Axis.horizontal,
                  padding:const EdgeInsets.only(left: 20,right:20),
                  separatorBuilder: (context, index) =>const SizedBox(width: 25,) ,
                  itemBuilder: (context, index){
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: catagories[index].boxColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(catagories[index].iconpath),
                          ),
      
                        ),
                        Text(
                          catagories[index].name,
                          style:const TextStyle(
                            fontWeight:FontWeight.w400,
                            color: Colors.white,
                            fontSize: 14
                          )
                        )
                      ],
                    ),
                    );
                  } ,
                  ),
                ),
              
            
          ],
        );
  }

  Container search() {
    return Container(
          margin:const EdgeInsets.only(left:25,right:25,top: 15,bottom: 20),
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
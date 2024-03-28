import 'package:flut/model/catagoryModel.dart';
import 'package:flut/model/deitRecomendation.dart';
import 'package:flut/model/popular.dart';
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
  List <populars> popularDiets=[];

  void getCatagories(){
    catagories= CatagoryModel.getCatagories();
  }

  void getDeits(){
    Deits=DeitModel.getDeits();
  }

  void getpopulars(){
    popularDiets=populars.getpopulars();
  }

  @override
  Widget build(BuildContext context) {
    getCatagories();
    getDeits();
    getpopulars();
    return Scaffold(
      appBar: appBar(),
      body:  ListView(
        children: [
          search(),
          catagorySection(),
          Recomendation(),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                child: Text(
                  'popular',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                )
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                        blurRadius:40,
                        color: Colors.purple.withOpacity(0.3),
                        offset:const Offset(0, 10),
                        spreadRadius: 0
                         )
                         ]
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(popularDiets[index].iconpath),
                        Column(
                          children: [
                            Text(
                              popularDiets[index].name ,
                              style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 13,
                            fontWeight: FontWeight.w400

                        )
                            )
                          ],
                        )
                      ],
                    ),

                  );

                },
                separatorBuilder:(context,index)=>const SizedBox(height: 20,),
                padding:const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20
                ),
                itemCount: popularDiets.length)
            ],
          )
          
        ],
      ),
    );
  }

  Column Recomendation() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top:20,left: 20 ,bottom: 20),
              child: Text(
                'Deit Recomendation',
                 style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                )
              ),
            ),
            Container(
              height: 230,
              child:ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount:Deits.length,
                padding: const EdgeInsets.only(left: 20,right: 20),
                separatorBuilder: (context,index)=>const SizedBox(width: 20,),
                itemBuilder: (context, index){
                  return Container(
                    width: 200,
                    decoration:BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                      SvgPicture.asset(Deits[index].iconpath),
                      Text(
                        Deits[index].name,
                        style:const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        Deits[index].level + '|' + Deits[index].duration + '|' + Deits[index].calorie,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 13,
                          fontWeight: FontWeight.w400

                        ),
                      ),
                      Container(
                        height: 40,
                        width: 130,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Deits[index].viewIsSelected?Color.fromARGB(178, 27, 75, 233): Colors.transparent,
                              Deits[index].viewIsSelected?Color.fromARGB(221, 34, 124, 154):Colors.transparent
                            ]
                            )
                        ),
                        child:const Center(
                          child: Text(
                            'view',
                            style: TextStyle(
                              color: Colors.white

                            ),
                          ),
                        ),
                      )
                      ]
                    ),
                  );
                },
                  
              )
            )
          ],
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
                  separatorBuilder: (context, index) =>
                  const SizedBox(width: 25,) ,
                  itemBuilder: (context, index){
                    return Container(
                      width: 100,
                      padding:const EdgeInsets.only(bottom: 20),
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
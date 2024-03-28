class populars{
  String name;
  String iconpath;
  String level;
  String duration;
  String calorie;
  bool boxisSelected;




  populars({
    required this.name,
    required this.boxisSelected,
    required this.calorie,
    required this.level,
    required this.duration,
    required this.iconpath
  });



  static List<populars> getpopulars(){
    List <populars> popularDiets=[];



    popularDiets.add(
      populars(
        name: 'blueberry pancakes',
        iconpath: 'assets/icons/blueberry-pancake.svg',
        level: 'medium',
        duration: '14 mins',
        calorie: '230kcal',
        boxisSelected: true
      )
    );


    popularDiets.add(
      populars(
        name: 'salmon Nigiri',
        iconpath: 'assets/icons/salmon-nigiri.svg',
        level: 'high',
        duration: '34 mins',
        calorie: '130kcal',
        boxisSelected: false
      )
    );


    return popularDiets;
  }

}
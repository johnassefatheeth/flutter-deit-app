class DeitModel{
  String name;
  String iconpath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;



  DeitModel({
    required this.name,
    required this.iconpath,
    required this.calorie,
    required this.duration,
    required this.level,
    required this.viewIsSelected
  });


  static List<DeitModel>getDeits(){
    List<DeitModel> Deits=[];


    Deits.add(
      DeitModel(
        name: 'honey pancakes',
        iconpath: 'assets/icons/honey-pancakes.svg',
        calorie: '10000kcal',
        duration: '20 mins',
        level: 'easy',
        viewIsSelected: true)
    );

    Deits.add(
      DeitModel(
        name: 'canai bread',
        iconpath: 'assets/icons/canai-bread.svg',
        calorie: '100kcal',
        duration: '120 mins',
        level: 'easy',
        viewIsSelected: false)
    );

    return Deits;
  }


}
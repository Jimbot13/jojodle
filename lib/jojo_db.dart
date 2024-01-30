import 'jojo_class.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

class JojoDatabase extends GetxController{
  String boxName = 'jojo_database';
  List<JojoDetails> jojoList = [];

  void addJojo(JojoDetails newJojo) async{
    var box = await Hive.openBox<JojoDetails>(boxName);
    await box.add(newJojo);
    jojoList = box.values.toList();
    refresh();
  }

  void getJojo() async{
    var box = await Hive.openBox<JojoDetails>(boxName);
    jojoList = box.values.toList();
    if(jojoList.isEmpty){
      //part1
      box.put(1, JojoDetails('Johnathon Joestar', 'British', false, 1, 'Human', 'JoJo'));
      box.put(2, JojoDetails('Speedwagon', 'British', false, 1, 'Human', 'JoBro'));
      box.put(3, JojoDetails('Dio Brando', 'British', false, 1, 'Vampire', 'JoFoe'));
      //part2
      box.put(4, JojoDetails('Joseph Joestar', 'British', false, 2, 'Human', 'JoJo'));
      box.put(5, JojoDetails('Caesar Zeppeli', 'Italian', false, 2, 'Human', 'JoBro'));
      box.put(6, JojoDetails('Kars', 'Aztec', false, 2 , 'Pillar Man', 'JoFoe'));
      //part3
      box.put(7, JojoDetails('Jotaro Kujo', 'Japanese', true, 3, 'Human', 'JoJo'));
      box.put(8, JojoDetails('Noriaki Kakyoin', 'Japanese', true, 3, 'Human', 'JoBro'));
      box.put(9, JojoDetails('Iggy', 'American', true, 3, 'Dog', 'JoBro'));
      box.put(10, JojoDetails('DIO', 'Japanese', true, 3, 'Vampire', 'JoFoe'));
      //part4
      box.put(11, JojoDetails('Josuke Higashikata', 'Japanese', true, 4, 'Human', 'JoJo'));
      box.put(12, JojoDetails('Koichi Hirose', 'Japanese', true, 4, 'Human', 'JoBro'));
      box.put(13, JojoDetails('Yoshikage Kira', 'Japanese', true, 4, 'Human', 'JoFoe'));
      //part5
      box.put(14, JojoDetails('Giorno Giavanna', 'Italian', true, 5, 'Human', 'JoJo'));
      box.put(15, JojoDetails('Bruno Bucciarati', 'Italian', true, 5,'Human', 'JoBro'));
      box.put(16, JojoDetails('Diavolo', 'Italian', true, 5,'Human', 'JoFoe'));
      //part6
      box.put(17, JojoDetails('Jolyne Kujoh', 'American', true, 6,'Human', 'JoJo'));
      box.put(18, JojoDetails('Ermes Costello', 'American', true, 6,'Human', 'JoBro'));
      box.put(19, JojoDetails('Weather Report', 'American', true, 6,'Human', 'JoBro'));
      box.put(20, JojoDetails('Enrico Pucci', 'American', true, 6,'Human', 'JoFoe'));
    }
    refresh();
  }

  List<JojoDetails> getJojoList(){
    getJojo();
    return jojoList;
  }
}
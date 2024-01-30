import 'package:hive/hive.dart';

part 'jojo_class.g.dart';

@HiveType(typeId: 0)
class JojoDetails{
  @HiveField(0)
  String jojoName;
  @HiveField(1)
  String jojoNationality;
  @HiveField(2)
  bool jojoStand;
  @HiveField(3)
  int jojoPart;
  @HiveField(4)
  String jojoType;
  @HiveField(5)
  String jojoRelation;


  JojoDetails(
      this.jojoName,
      this.jojoNationality,
      this.jojoStand,
      this.jojoPart,
      this.jojoType,
      this.jojoRelation);
}
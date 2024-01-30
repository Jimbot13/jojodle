// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jojo_class.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JojoDetailsAdapter extends TypeAdapter<JojoDetails> {
  @override
  final int typeId = 0;

  @override
  JojoDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JojoDetails(
      fields[0] as String,
      fields[1] as String,
      fields[2] as bool,
      fields[3] as int,
      fields[4] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, JojoDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.jojoName)
      ..writeByte(1)
      ..write(obj.jojoNationality)
      ..writeByte(2)
      ..write(obj.jojoStand)
      ..writeByte(3)
      ..write(obj.jojoPart)
      ..writeByte(4)
      ..write(obj.jojoType)
      ..writeByte(5)
      ..write(obj.jojoRelation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JojoDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

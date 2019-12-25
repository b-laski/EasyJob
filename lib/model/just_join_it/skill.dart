library skill;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:easyjob/data/serializer/serializers.dart';

part 'skill.g.dart';

abstract class Skill implements Built<Skill, SkillBuilder> {
  String get name;
  int get level;

  Skill._();

  factory Skill([updates(SkillBuilder b)]) = _$Skill;

  String toJson() {
    return json.encode(serializers.serializeWith(Skill.serializer, this));
  }

  static Skill fromJson(String jsonString) {
    return serializers.deserializeWith(
        Skill.serializer, json.decode(jsonString));
  }

  static Serializer<Skill> get serializer => _$skillSerializer;
}

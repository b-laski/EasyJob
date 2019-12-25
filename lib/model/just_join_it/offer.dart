library offer;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:easyjob/data/serializer/serializers.dart';
import 'package:easyjob/model/just_join_it/skill.dart';

part 'offer.g.dart';

abstract class Offer implements Built<Offer, OfferBuilder> {
  String get title;
  String get street;
  String get city;
  String get country_code;
  String get address_text;
  String get marker_icon;
  bool get remote;
  String get company_name;
  @nullable
  String get company_url;
  String get company_size;
  String get experience_level;
  @nullable
  int get salary_from;
  @nullable
  int get salary_to;
  @nullable
  String get salary_currency;
  String get latitude;
  String get longitude;
  String get employment_type;
  String get published_at;
  String get id;
  String get company_logo_url;
  BuiltList<Skill> get skills;

  Offer._();

  factory Offer([updates(OfferBuilder b)]) = _$Offer;

  String toJson() {
    return json.encode(serializers.serializeWith(Offer.serializer, this));
  }

  static Offer fromJson(String jsonString) {
    return serializers.deserializeWith(
        Offer.serializer, json.decode(jsonString));
  }

  static Serializer<Offer> get serializer => _$offerSerializer;
}

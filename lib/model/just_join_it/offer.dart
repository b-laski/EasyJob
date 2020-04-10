library offer;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:easyjob/data/serializer/serializers.dart';
import 'package:easyjob/model/just_join_it/skill.dart';

part 'offer.g.dart';

abstract class Offer implements Built<Offer, OfferBuilder> {
  @nullable
  String get title;
  @nullable
  String get street;
  @nullable
  String get city;
  @nullable
  String get country_code;
  @nullable
  String get address_text;
  @nullable
  String get marker_icon;
  @nullable
  bool get remote;
  @nullable
  String get company_name;
  @nullable
  String get company_url;
  @nullable
  String get company_size;
  @nullable
  String get experience_level;
  @nullable
  int get salary_from;
  @nullable
  int get salary_to;
  @nullable
  String get salary_currency;
  @nullable
  String get latitude;
  @nullable
  String get longitude;
  @nullable
  String get employment_type;
  @nullable
  String get published_at;
  @nullable
  String get id;
  @nullable
  String get company_logo_url;
  @nullable
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

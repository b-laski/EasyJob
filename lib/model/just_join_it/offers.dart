library offers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:easyjob/data/serializer/serializers.dart';
import 'package:easyjob/model/just_join_it/model.dart';

part 'offers.g.dart';

abstract class Offers implements Built<Offers, OffersBuilder> {
  BuiltList<Offer> get offers;

  Offers._();

  factory Offers([updates(OffersBuilder b)]) = _$Offers;

  String toJson() {
    return json.encode(serializers.serializeWith(Offers.serializer, this));
  }

  static Offers fromJson(String jsonString) {
    return serializers.deserializeWith(
        Offers.serializer, json.decode(jsonString));
  }

  static Serializer<Offers> get serializer => _$offersSerializer;
}

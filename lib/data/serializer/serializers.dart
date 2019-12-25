library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:easyjob/model/just_join_it/model.dart';

part 'serializers.g.dart';

@SerializersFor(const [Offer, Skill, Offers])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

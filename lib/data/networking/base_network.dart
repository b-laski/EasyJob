import 'package:built_collection/built_collection.dart';
import 'package:easyjob/model/just_join_it/model.dart';

abstract class BaseNetwork {
  final String baseUrl;

  BaseNetwork(this.baseUrl);

  Future<List<Offer>> getOffers();
}

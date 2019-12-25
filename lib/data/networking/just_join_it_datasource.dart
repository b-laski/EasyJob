import 'dart:convert';

import 'package:easyjob/model/just_join_it/model.dart';
import 'package:http/http.dart' as http;
import 'package:easyjob/data/networking/base_network.dart';

class JustJoinItDataSource extends BaseNetwork {
  final http.Client client;

  JustJoinItDataSource(this.client) : super("https://justjoin.it/api/offers");

  @override
  Future<List<Offer>> getOffers() async {
    final urlEncoded = Uri.encodeFull(baseUrl);
    final response = await client.get(urlEncoded);

    switch (response.statusCode) {
      case 200:
        {
          List<Offer> offers = List<Offer>();
          final offersJSON = json.decode(response.body);
          for (dynamic offer in offersJSON) {
            offers.add(Offer.fromJson(json.encode(offer)));
          }

          return offers;
        }
        break;
      default:
        {
          throw JustJoinItError("Nie udało się załadować offert.");
        }
        break;
    }
  }
}

class JustJoinItError implements Exception {
  final String message;
  JustJoinItError(this.message);
}

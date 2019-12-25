import 'package:easyjob/bloc/offers_list_bloc/bloc.dart';
import 'package:easyjob/data/networking/just_join_it_datasource.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;

class DIContainer {
  static loadContainer() {
    kiwi.Container()
      ..registerInstance(http.Client())
      ..registerFactory((c) => JustJoinItDataSource(c.resolve()))
      ..registerFactory((c) => OffersListBloc(c.resolve()));
  }
}

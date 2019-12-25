library offers_list_state;

import 'package:built_value/built_value.dart';
import 'package:easyjob/model/just_join_it/model.dart';

part 'offers_list_state.g.dart';

abstract class OffersListState
    implements Built<OffersListState, OffersListStateBuilder> {
  bool get isLoading;
  List<Offer> get offers;
  String get error;
  OffersListState._();

  bool get isInitial => !isLoading && offers.isEmpty && error == '';
  bool get isSuccessful => !isLoading && offers.isNotEmpty && error == '';

  factory OffersListState([updates(OffersListStateBuilder b)]) =
      _$OffersListState;

  factory OffersListState.initial() {
    return OffersListState((b) => b
      ..isLoading = false
      ..offers = List<Offer>()
      ..error = '');
  }

  factory OffersListState.loading() {
    return OffersListState((b) => b
      ..isLoading = true
      ..offers = List<Offer>()
      ..error = '');
  }

  factory OffersListState.failure(String error) {
    return OffersListState((b) => b
      ..isLoading = false
      ..offers = List<Offer>()
      ..error = error);
  }

  factory OffersListState.success(List<Offer> offers) {
    return OffersListState((b) => b
      ..isLoading = false
      ..offers = offers
      ..error = '');
  }
}

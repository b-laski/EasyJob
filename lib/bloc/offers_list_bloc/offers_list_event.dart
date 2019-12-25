library offers_list_event;

import 'package:built_value/built_value.dart';
import 'package:easyjob/model/just_join_it/model.dart';

part 'offers_list_event.g.dart';

abstract class OffersListEvent {}

abstract class OffersListInitiated extends OffersListEvent
    implements Built<OffersListInitiated, OffersListInitiatedBuilder> {
  OffersListInitiated._();

  factory OffersListInitiated([updates(OffersListInitiatedBuilder b)]) =
      _$OffersListInitiated;
}

class OfferListLoad extends OffersListEvent {}

class OfferSearchListLoad extends OffersListEvent {
  List<Offer> searchedOffer;

  OfferSearchListLoad(this.searchedOffer);
}

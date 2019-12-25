import 'package:bloc/bloc.dart';
import 'package:easyjob/bloc/offers_list_bloc/offers_list_event.dart';
import 'package:easyjob/bloc/offers_list_bloc/offers_list_state.dart';
import 'package:easyjob/data/networking/just_join_it_datasource.dart';
import 'package:easyjob/model/just_join_it/model.dart';

class OffersListBloc extends Bloc<OffersListEvent, OffersListState> {
  final JustJoinItDataSource _justJoinItDataSource;

  OffersListBloc(this._justJoinItDataSource) : super();

  @override
  OffersListState get initialState => OffersListState.initial();

  searchJob(String searchQuary) async {
    print("searchJob is working");
    if (searchQuary.isEmpty) {
      add(OfferListLoad());
    }

    final offers = await _justJoinItDataSource.getOffers();
    final searchedoffers = offers
        .where((s) => s.title.toLowerCase().contains(searchQuary.toLowerCase()))
        .toList();
    add(OfferSearchListLoad(searchedoffers));
  }

  @override
  Stream<OffersListState> mapEventToState(OffersListEvent event) async* {
    yield OffersListState.loading();
    if (event is OfferListLoad) {
      final offers = await _justJoinItDataSource.getOffers();
      yield OffersListState.success(offers);
    }

    if (event is OfferSearchListLoad) {
      yield OffersListState.success(event.searchedOffer);
    }
  }
}

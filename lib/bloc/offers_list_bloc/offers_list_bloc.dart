import 'package:bloc/bloc.dart';
import 'package:easyjob/bloc/offers_list_bloc/offers_list_event.dart';
import 'package:easyjob/bloc/offers_list_bloc/offers_list_state.dart';
import 'package:easyjob/data/networking/just_join_it_datasource.dart';

class OffersListBloc extends Bloc<OffersListEvent, OffersListState> {
  String searchQuary = '';
  String searchCityQuary = '';
  bool isAdvanceSearching = false;

  final JustJoinItDataSource _justJoinItDataSource;

  OffersListBloc(this._justJoinItDataSource) : super();

  @override
  OffersListState get initialState => OffersListState.initial();

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

  searchJob() async {
    print("searchJob is working. Quary: ${searchQuary}, ${searchCityQuary}");
    if (this.searchQuary.isEmpty && this.searchCityQuary.isEmpty) {
      add(OfferListLoad());
    }

    final offers = await _justJoinItDataSource.getOffers();
    final searchedoffers = offers
        .where((s) => s.title.toLowerCase().contains(searchQuary.toLowerCase()))
        .where(
            (s) => s.city.toLowerCase().contains(searchCityQuary.toLowerCase()))
        .toList();
    add(OfferSearchListLoad(searchedoffers));
  }
}

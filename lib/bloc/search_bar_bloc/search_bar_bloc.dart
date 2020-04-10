import 'package:bloc/bloc.dart';
import 'package:easyjob/bloc/search_bar_bloc/bloc.dart';

class SearchBarBloc extends Bloc<SearchBarEvent, SearchBarState> {
  bool isAdvanceMenuOpen = false;

  SearchBarBloc() : super();

  @override
  SearchBarState get initialState => SearchBarState.initial();

  @override
  Stream<SearchBarState> mapEventToState(
    SearchBarEvent event,
  ) async* {
    if (event is ShowAdvanceSearchBarEvent) {
      yield SearchBarState.showAdvanceSearching();
    }

    if (event is HideAdvanceSearchBarEvent) {
      yield SearchBarState.hideAdvanceSearching();
    }
  }

  void showAdvanceMenu() {
    isAdvanceMenuOpen = true;
    add(ShowAdvanceSearchBarEvent());
  }

  void hideAdvanceMenu() {
    isAdvanceMenuOpen = true;
    add(HideAdvanceSearchBarEvent());
  }
}

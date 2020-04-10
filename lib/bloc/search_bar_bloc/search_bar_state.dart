library search_bar_state;

import 'package:built_value/built_value.dart';

part 'search_bar_state.g.dart';

abstract class SearchBarState
    implements Built<SearchBarState, SearchBarStateBuilder> {
  bool get isAdvanceSearching;

  SearchBarState._();

  factory SearchBarState([updates(SearchBarStateBuilder b)]) = _$SearchBarState;

  factory SearchBarState.initial() {
    return SearchBarState((b) => b..isAdvanceSearching = false);
  }

  factory SearchBarState.showAdvanceSearching() {
    return SearchBarState((b) => b..isAdvanceSearching = true);
  }

  factory SearchBarState.hideAdvanceSearching() {
    return SearchBarState((b) => b..isAdvanceSearching = false);
  }
}

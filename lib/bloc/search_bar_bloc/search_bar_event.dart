library search_bar_event;

import 'package:built_value/built_value.dart';

part 'search_bar_event.g.dart';

abstract class SearchBarEvent {}

abstract class SearchBarEventInitialed
    implements Built<SearchBarEventInitialed, SearchBarEventInitialedBuilder> {
  SearchBarEventInitialed._();

  factory SearchBarEventInitialed([updates(SearchBarEventInitialedBuilder b)]) =
      _$SearchBarEventInitialed;
}

class ShowAdvanceSearchBarEvent extends SearchBarEvent {}

class HideAdvanceSearchBarEvent extends SearchBarEvent {}

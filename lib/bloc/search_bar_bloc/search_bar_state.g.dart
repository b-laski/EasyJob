// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_bar_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchBarState extends SearchBarState {
  @override
  final bool isAdvanceSearching;

  factory _$SearchBarState([void Function(SearchBarStateBuilder) updates]) =>
      (new SearchBarStateBuilder()..update(updates)).build();

  _$SearchBarState._({this.isAdvanceSearching}) : super._() {
    if (isAdvanceSearching == null) {
      throw new BuiltValueNullFieldError(
          'SearchBarState', 'isAdvanceSearching');
    }
  }

  @override
  SearchBarState rebuild(void Function(SearchBarStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBarStateBuilder toBuilder() =>
      new SearchBarStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchBarState &&
        isAdvanceSearching == other.isAdvanceSearching;
  }

  @override
  int get hashCode {
    return $jf($jc(0, isAdvanceSearching.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchBarState')
          ..add('isAdvanceSearching', isAdvanceSearching))
        .toString();
  }
}

class SearchBarStateBuilder
    implements Builder<SearchBarState, SearchBarStateBuilder> {
  _$SearchBarState _$v;

  bool _isAdvanceSearching;
  bool get isAdvanceSearching => _$this._isAdvanceSearching;
  set isAdvanceSearching(bool isAdvanceSearching) =>
      _$this._isAdvanceSearching = isAdvanceSearching;

  SearchBarStateBuilder();

  SearchBarStateBuilder get _$this {
    if (_$v != null) {
      _isAdvanceSearching = _$v.isAdvanceSearching;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchBarState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchBarState;
  }

  @override
  void update(void Function(SearchBarStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchBarState build() {
    final _$result =
        _$v ?? new _$SearchBarState._(isAdvanceSearching: isAdvanceSearching);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

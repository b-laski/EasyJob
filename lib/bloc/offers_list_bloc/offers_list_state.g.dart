// GENERATED CODE - DO NOT MODIFY BY HAND

part of offers_list_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OffersListState extends OffersListState {
  @override
  final bool isLoading;
  @override
  final List<Offer> offers;
  @override
  final String error;

  factory _$OffersListState([void Function(OffersListStateBuilder) updates]) =>
      (new OffersListStateBuilder()..update(updates)).build();

  _$OffersListState._({this.isLoading, this.offers, this.error}) : super._() {
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('OffersListState', 'isLoading');
    }
    if (offers == null) {
      throw new BuiltValueNullFieldError('OffersListState', 'offers');
    }
    if (error == null) {
      throw new BuiltValueNullFieldError('OffersListState', 'error');
    }
  }

  @override
  OffersListState rebuild(void Function(OffersListStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OffersListStateBuilder toBuilder() =>
      new OffersListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OffersListState &&
        isLoading == other.isLoading &&
        offers == other.offers &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), offers.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OffersListState')
          ..add('isLoading', isLoading)
          ..add('offers', offers)
          ..add('error', error))
        .toString();
  }
}

class OffersListStateBuilder
    implements Builder<OffersListState, OffersListStateBuilder> {
  _$OffersListState _$v;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  List<Offer> _offers;
  List<Offer> get offers => _$this._offers;
  set offers(List<Offer> offers) => _$this._offers = offers;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  OffersListStateBuilder();

  OffersListStateBuilder get _$this {
    if (_$v != null) {
      _isLoading = _$v.isLoading;
      _offers = _$v.offers;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OffersListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OffersListState;
  }

  @override
  void update(void Function(OffersListStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OffersListState build() {
    final _$result = _$v ??
        new _$OffersListState._(
            isLoading: isLoading, offers: offers, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

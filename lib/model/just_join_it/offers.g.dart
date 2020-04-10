// GENERATED CODE - DO NOT MODIFY BY HAND

part of offers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Offers> _$offersSerializer = new _$OffersSerializer();

class _$OffersSerializer implements StructuredSerializer<Offers> {
  @override
  final Iterable<Type> types = const [Offers, _$Offers];
  @override
  final String wireName = 'Offers';

  @override
  Iterable<Object> serialize(Serializers serializers, Offers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'offers',
      serializers.serialize(object.offers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Offer)])),
    ];

    return result;
  }

  @override
  Offers deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OffersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'offers':
          result.offers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Offer)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Offers extends Offers {
  @override
  final BuiltList<Offer> offers;

  factory _$Offers([void Function(OffersBuilder) updates]) =>
      (new OffersBuilder()..update(updates)).build();

  _$Offers._({this.offers}) : super._() {
    if (offers == null) {
      throw new BuiltValueNullFieldError('Offers', 'offers');
    }
  }

  @override
  Offers rebuild(void Function(OffersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OffersBuilder toBuilder() => new OffersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Offers && offers == other.offers;
  }

  @override
  int get hashCode {
    return $jf($jc(0, offers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Offers')..add('offers', offers))
        .toString();
  }
}

class OffersBuilder implements Builder<Offers, OffersBuilder> {
  _$Offers _$v;

  ListBuilder<Offer> _offers;
  ListBuilder<Offer> get offers => _$this._offers ??= new ListBuilder<Offer>();
  set offers(ListBuilder<Offer> offers) => _$this._offers = offers;

  OffersBuilder();

  OffersBuilder get _$this {
    if (_$v != null) {
      _offers = _$v.offers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Offers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Offers;
  }

  @override
  void update(void Function(OffersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Offers build() {
    _$Offers _$result;
    try {
      _$result = _$v ?? new _$Offers._(offers: offers.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'offers';
        offers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Offers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

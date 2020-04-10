// GENERATED CODE - DO NOT MODIFY BY HAND

part of offer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Offer> _$offerSerializer = new _$OfferSerializer();

class _$OfferSerializer implements StructuredSerializer<Offer> {
  @override
  final Iterable<Type> types = const [Offer, _$Offer];
  @override
  final String wireName = 'Offer';

  @override
  Iterable<Object> serialize(Serializers serializers, Offer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.street != null) {
      result
        ..add('street')
        ..add(serializers.serialize(object.street,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.country_code != null) {
      result
        ..add('country_code')
        ..add(serializers.serialize(object.country_code,
            specifiedType: const FullType(String)));
    }
    if (object.address_text != null) {
      result
        ..add('address_text')
        ..add(serializers.serialize(object.address_text,
            specifiedType: const FullType(String)));
    }
    if (object.marker_icon != null) {
      result
        ..add('marker_icon')
        ..add(serializers.serialize(object.marker_icon,
            specifiedType: const FullType(String)));
    }
    if (object.remote != null) {
      result
        ..add('remote')
        ..add(serializers.serialize(object.remote,
            specifiedType: const FullType(bool)));
    }
    if (object.company_name != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(object.company_name,
            specifiedType: const FullType(String)));
    }
    if (object.company_url != null) {
      result
        ..add('company_url')
        ..add(serializers.serialize(object.company_url,
            specifiedType: const FullType(String)));
    }
    if (object.company_size != null) {
      result
        ..add('company_size')
        ..add(serializers.serialize(object.company_size,
            specifiedType: const FullType(String)));
    }
    if (object.experience_level != null) {
      result
        ..add('experience_level')
        ..add(serializers.serialize(object.experience_level,
            specifiedType: const FullType(String)));
    }
    if (object.salary_from != null) {
      result
        ..add('salary_from')
        ..add(serializers.serialize(object.salary_from,
            specifiedType: const FullType(int)));
    }
    if (object.salary_to != null) {
      result
        ..add('salary_to')
        ..add(serializers.serialize(object.salary_to,
            specifiedType: const FullType(int)));
    }
    if (object.salary_currency != null) {
      result
        ..add('salary_currency')
        ..add(serializers.serialize(object.salary_currency,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.employment_type != null) {
      result
        ..add('employment_type')
        ..add(serializers.serialize(object.employment_type,
            specifiedType: const FullType(String)));
    }
    if (object.published_at != null) {
      result
        ..add('published_at')
        ..add(serializers.serialize(object.published_at,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.company_logo_url != null) {
      result
        ..add('company_logo_url')
        ..add(serializers.serialize(object.company_logo_url,
            specifiedType: const FullType(String)));
    }
    if (object.skills != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(object.skills,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Skill)])));
    }
    return result;
  }

  @override
  Offer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfferBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.country_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address_text':
          result.address_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marker_icon':
          result.marker_icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remote':
          result.remote = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'company_name':
          result.company_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_url':
          result.company_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_size':
          result.company_size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'experience_level':
          result.experience_level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'salary_from':
          result.salary_from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'salary_to':
          result.salary_to = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'salary_currency':
          result.salary_currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'employment_type':
          result.employment_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'published_at':
          result.published_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_logo_url':
          result.company_logo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Skill)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Offer extends Offer {
  @override
  final String title;
  @override
  final String street;
  @override
  final String city;
  @override
  final String country_code;
  @override
  final String address_text;
  @override
  final String marker_icon;
  @override
  final bool remote;
  @override
  final String company_name;
  @override
  final String company_url;
  @override
  final String company_size;
  @override
  final String experience_level;
  @override
  final int salary_from;
  @override
  final int salary_to;
  @override
  final String salary_currency;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String employment_type;
  @override
  final String published_at;
  @override
  final String id;
  @override
  final String company_logo_url;
  @override
  final BuiltList<Skill> skills;

  factory _$Offer([void Function(OfferBuilder) updates]) =>
      (new OfferBuilder()..update(updates)).build();

  _$Offer._(
      {this.title,
      this.street,
      this.city,
      this.country_code,
      this.address_text,
      this.marker_icon,
      this.remote,
      this.company_name,
      this.company_url,
      this.company_size,
      this.experience_level,
      this.salary_from,
      this.salary_to,
      this.salary_currency,
      this.latitude,
      this.longitude,
      this.employment_type,
      this.published_at,
      this.id,
      this.company_logo_url,
      this.skills})
      : super._();

  @override
  Offer rebuild(void Function(OfferBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfferBuilder toBuilder() => new OfferBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Offer &&
        title == other.title &&
        street == other.street &&
        city == other.city &&
        country_code == other.country_code &&
        address_text == other.address_text &&
        marker_icon == other.marker_icon &&
        remote == other.remote &&
        company_name == other.company_name &&
        company_url == other.company_url &&
        company_size == other.company_size &&
        experience_level == other.experience_level &&
        salary_from == other.salary_from &&
        salary_to == other.salary_to &&
        salary_currency == other.salary_currency &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        employment_type == other.employment_type &&
        published_at == other.published_at &&
        id == other.id &&
        company_logo_url == other.company_logo_url &&
        skills == other.skills;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, title.hashCode), street.hashCode),
                                                                                city.hashCode),
                                                                            country_code.hashCode),
                                                                        address_text.hashCode),
                                                                    marker_icon.hashCode),
                                                                remote.hashCode),
                                                            company_name.hashCode),
                                                        company_url.hashCode),
                                                    company_size.hashCode),
                                                experience_level.hashCode),
                                            salary_from.hashCode),
                                        salary_to.hashCode),
                                    salary_currency.hashCode),
                                latitude.hashCode),
                            longitude.hashCode),
                        employment_type.hashCode),
                    published_at.hashCode),
                id.hashCode),
            company_logo_url.hashCode),
        skills.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Offer')
          ..add('title', title)
          ..add('street', street)
          ..add('city', city)
          ..add('country_code', country_code)
          ..add('address_text', address_text)
          ..add('marker_icon', marker_icon)
          ..add('remote', remote)
          ..add('company_name', company_name)
          ..add('company_url', company_url)
          ..add('company_size', company_size)
          ..add('experience_level', experience_level)
          ..add('salary_from', salary_from)
          ..add('salary_to', salary_to)
          ..add('salary_currency', salary_currency)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('employment_type', employment_type)
          ..add('published_at', published_at)
          ..add('id', id)
          ..add('company_logo_url', company_logo_url)
          ..add('skills', skills))
        .toString();
  }
}

class OfferBuilder implements Builder<Offer, OfferBuilder> {
  _$Offer _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _country_code;
  String get country_code => _$this._country_code;
  set country_code(String country_code) => _$this._country_code = country_code;

  String _address_text;
  String get address_text => _$this._address_text;
  set address_text(String address_text) => _$this._address_text = address_text;

  String _marker_icon;
  String get marker_icon => _$this._marker_icon;
  set marker_icon(String marker_icon) => _$this._marker_icon = marker_icon;

  bool _remote;
  bool get remote => _$this._remote;
  set remote(bool remote) => _$this._remote = remote;

  String _company_name;
  String get company_name => _$this._company_name;
  set company_name(String company_name) => _$this._company_name = company_name;

  String _company_url;
  String get company_url => _$this._company_url;
  set company_url(String company_url) => _$this._company_url = company_url;

  String _company_size;
  String get company_size => _$this._company_size;
  set company_size(String company_size) => _$this._company_size = company_size;

  String _experience_level;
  String get experience_level => _$this._experience_level;
  set experience_level(String experience_level) =>
      _$this._experience_level = experience_level;

  int _salary_from;
  int get salary_from => _$this._salary_from;
  set salary_from(int salary_from) => _$this._salary_from = salary_from;

  int _salary_to;
  int get salary_to => _$this._salary_to;
  set salary_to(int salary_to) => _$this._salary_to = salary_to;

  String _salary_currency;
  String get salary_currency => _$this._salary_currency;
  set salary_currency(String salary_currency) =>
      _$this._salary_currency = salary_currency;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _employment_type;
  String get employment_type => _$this._employment_type;
  set employment_type(String employment_type) =>
      _$this._employment_type = employment_type;

  String _published_at;
  String get published_at => _$this._published_at;
  set published_at(String published_at) => _$this._published_at = published_at;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _company_logo_url;
  String get company_logo_url => _$this._company_logo_url;
  set company_logo_url(String company_logo_url) =>
      _$this._company_logo_url = company_logo_url;

  ListBuilder<Skill> _skills;
  ListBuilder<Skill> get skills => _$this._skills ??= new ListBuilder<Skill>();
  set skills(ListBuilder<Skill> skills) => _$this._skills = skills;

  OfferBuilder();

  OfferBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _street = _$v.street;
      _city = _$v.city;
      _country_code = _$v.country_code;
      _address_text = _$v.address_text;
      _marker_icon = _$v.marker_icon;
      _remote = _$v.remote;
      _company_name = _$v.company_name;
      _company_url = _$v.company_url;
      _company_size = _$v.company_size;
      _experience_level = _$v.experience_level;
      _salary_from = _$v.salary_from;
      _salary_to = _$v.salary_to;
      _salary_currency = _$v.salary_currency;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _employment_type = _$v.employment_type;
      _published_at = _$v.published_at;
      _id = _$v.id;
      _company_logo_url = _$v.company_logo_url;
      _skills = _$v.skills?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Offer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Offer;
  }

  @override
  void update(void Function(OfferBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Offer build() {
    _$Offer _$result;
    try {
      _$result = _$v ??
          new _$Offer._(
              title: title,
              street: street,
              city: city,
              country_code: country_code,
              address_text: address_text,
              marker_icon: marker_icon,
              remote: remote,
              company_name: company_name,
              company_url: company_url,
              company_size: company_size,
              experience_level: experience_level,
              salary_from: salary_from,
              salary_to: salary_to,
              salary_currency: salary_currency,
              latitude: latitude,
              longitude: longitude,
              employment_type: employment_type,
              published_at: published_at,
              id: id,
              company_logo_url: company_logo_url,
              skills: _skills?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'skills';
        _skills?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Offer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

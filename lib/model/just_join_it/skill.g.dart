// GENERATED CODE - DO NOT MODIFY BY HAND

part of skill;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Skill> _$skillSerializer = new _$SkillSerializer();

class _$SkillSerializer implements StructuredSerializer<Skill> {
  @override
  final Iterable<Type> types = const [Skill, _$Skill];
  @override
  final String wireName = 'Skill';

  @override
  Iterable<Object> serialize(Serializers serializers, Skill object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Skill deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SkillBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Skill extends Skill {
  @override
  final String name;
  @override
  final int level;

  factory _$Skill([void Function(SkillBuilder) updates]) =>
      (new SkillBuilder()..update(updates)).build();

  _$Skill._({this.name, this.level}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Skill', 'name');
    }
    if (level == null) {
      throw new BuiltValueNullFieldError('Skill', 'level');
    }
  }

  @override
  Skill rebuild(void Function(SkillBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillBuilder toBuilder() => new SkillBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Skill && name == other.name && level == other.level;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), level.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Skill')
          ..add('name', name)
          ..add('level', level))
        .toString();
  }
}

class SkillBuilder implements Builder<Skill, SkillBuilder> {
  _$Skill _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  SkillBuilder();

  SkillBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _level = _$v.level;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Skill other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Skill;
  }

  @override
  void update(void Function(SkillBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Skill build() {
    final _$result = _$v ?? new _$Skill._(name: name, level: level);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

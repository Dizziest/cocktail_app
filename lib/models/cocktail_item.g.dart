// GENERATED CODE - DO NOT MODIFY BY HAND

part of cocktail_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CocktailItem> _$cocktailItemSerializer =
    new _$CocktailItemSerializer();

class _$CocktailItemSerializer implements StructuredSerializer<CocktailItem> {
  @override
  final Iterable<Type> types = const [CocktailItem, _$CocktailItem];
  @override
  final String wireName = 'CocktailItem';

  @override
  Iterable<Object> serialize(Serializers serializers, CocktailItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'idDrink',
      serializers.serialize(object.idDrink,
          specifiedType: const FullType(String)),
      'strDrink',
      serializers.serialize(object.strDrink,
          specifiedType: const FullType(String)),
      'strCategory',
      serializers.serialize(object.strCategory,
          specifiedType: const FullType(String)),
      'strAlcoholic',
      serializers.serialize(object.strAlcoholic,
          specifiedType: const FullType(String)),
      'strDrinkThumb',
      serializers.serialize(object.strDrinkThumb,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CocktailItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CocktailItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'idDrink':
          result.idDrink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strDrink':
          result.strDrink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strCategory':
          result.strCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strAlcoholic':
          result.strAlcoholic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strDrinkThumb':
          result.strDrinkThumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CocktailItem extends CocktailItem {
  @override
  final String idDrink;
  @override
  final String strDrink;
  @override
  final String strCategory;
  @override
  final String strAlcoholic;
  @override
  final String strDrinkThumb;

  factory _$CocktailItem([void Function(CocktailItemBuilder) updates]) =>
      (new CocktailItemBuilder()..update(updates)).build();

  _$CocktailItem._(
      {this.idDrink,
      this.strDrink,
      this.strCategory,
      this.strAlcoholic,
      this.strDrinkThumb})
      : super._() {
    if (idDrink == null) {
      throw new BuiltValueNullFieldError('CocktailItem', 'idDrink');
    }
    if (strDrink == null) {
      throw new BuiltValueNullFieldError('CocktailItem', 'strDrink');
    }
    if (strCategory == null) {
      throw new BuiltValueNullFieldError('CocktailItem', 'strCategory');
    }
    if (strAlcoholic == null) {
      throw new BuiltValueNullFieldError('CocktailItem', 'strAlcoholic');
    }
    if (strDrinkThumb == null) {
      throw new BuiltValueNullFieldError('CocktailItem', 'strDrinkThumb');
    }
  }

  @override
  CocktailItem rebuild(void Function(CocktailItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CocktailItemBuilder toBuilder() => new CocktailItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CocktailItem &&
        idDrink == other.idDrink &&
        strDrink == other.strDrink &&
        strCategory == other.strCategory &&
        strAlcoholic == other.strAlcoholic &&
        strDrinkThumb == other.strDrinkThumb;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, idDrink.hashCode), strDrink.hashCode),
                strCategory.hashCode),
            strAlcoholic.hashCode),
        strDrinkThumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CocktailItem')
          ..add('idDrink', idDrink)
          ..add('strDrink', strDrink)
          ..add('strCategory', strCategory)
          ..add('strAlcoholic', strAlcoholic)
          ..add('strDrinkThumb', strDrinkThumb))
        .toString();
  }
}

class CocktailItemBuilder
    implements Builder<CocktailItem, CocktailItemBuilder> {
  _$CocktailItem _$v;

  String _idDrink;
  String get idDrink => _$this._idDrink;
  set idDrink(String idDrink) => _$this._idDrink = idDrink;

  String _strDrink;
  String get strDrink => _$this._strDrink;
  set strDrink(String strDrink) => _$this._strDrink = strDrink;

  String _strCategory;
  String get strCategory => _$this._strCategory;
  set strCategory(String strCategory) => _$this._strCategory = strCategory;

  String _strAlcoholic;
  String get strAlcoholic => _$this._strAlcoholic;
  set strAlcoholic(String strAlcoholic) => _$this._strAlcoholic = strAlcoholic;

  String _strDrinkThumb;
  String get strDrinkThumb => _$this._strDrinkThumb;
  set strDrinkThumb(String strDrinkThumb) =>
      _$this._strDrinkThumb = strDrinkThumb;

  CocktailItemBuilder();

  CocktailItemBuilder get _$this {
    if (_$v != null) {
      _idDrink = _$v.idDrink;
      _strDrink = _$v.strDrink;
      _strCategory = _$v.strCategory;
      _strAlcoholic = _$v.strAlcoholic;
      _strDrinkThumb = _$v.strDrinkThumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CocktailItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CocktailItem;
  }

  @override
  void update(void Function(CocktailItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CocktailItem build() {
    final _$result = _$v ??
        new _$CocktailItem._(
            idDrink: idDrink,
            strDrink: strDrink,
            strCategory: strCategory,
            strAlcoholic: strAlcoholic,
            strDrinkThumb: strDrinkThumb);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

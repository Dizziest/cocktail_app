// GENERATED CODE - DO NOT MODIFY BY HAND

part of detailed_cocktail_search_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailedCocktailSearchResponse>
    _$detailedCocktailSearchResponseSerializer =
    new _$DetailedCocktailSearchResponseSerializer();

class _$DetailedCocktailSearchResponseSerializer
    implements StructuredSerializer<DetailedCocktailSearchResponse> {
  @override
  final Iterable<Type> types = const [
    DetailedCocktailSearchResponse,
    _$DetailedCocktailSearchResponse
  ];
  @override
  final String wireName = 'DetailedCocktailSearchResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DetailedCocktailSearchResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'drinks',
      serializers.serialize(object.drinks,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CocktailDetailedItem)])),
    ];

    return result;
  }

  @override
  DetailedCocktailSearchResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailedCocktailSearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'drinks':
          result.drinks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CocktailDetailedItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DetailedCocktailSearchResponse extends DetailedCocktailSearchResponse {
  @override
  final BuiltList<CocktailDetailedItem> drinks;

  factory _$DetailedCocktailSearchResponse(
          [void Function(DetailedCocktailSearchResponseBuilder) updates]) =>
      (new DetailedCocktailSearchResponseBuilder()..update(updates)).build();

  _$DetailedCocktailSearchResponse._({this.drinks}) : super._() {
    if (drinks == null) {
      throw new BuiltValueNullFieldError(
          'DetailedCocktailSearchResponse', 'drinks');
    }
  }

  @override
  DetailedCocktailSearchResponse rebuild(
          void Function(DetailedCocktailSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailedCocktailSearchResponseBuilder toBuilder() =>
      new DetailedCocktailSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailedCocktailSearchResponse && drinks == other.drinks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, drinks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailedCocktailSearchResponse')
          ..add('drinks', drinks))
        .toString();
  }
}

class DetailedCocktailSearchResponseBuilder
    implements
        Builder<DetailedCocktailSearchResponse,
            DetailedCocktailSearchResponseBuilder> {
  _$DetailedCocktailSearchResponse _$v;

  ListBuilder<CocktailDetailedItem> _drinks;
  ListBuilder<CocktailDetailedItem> get drinks =>
      _$this._drinks ??= new ListBuilder<CocktailDetailedItem>();
  set drinks(ListBuilder<CocktailDetailedItem> drinks) =>
      _$this._drinks = drinks;

  DetailedCocktailSearchResponseBuilder();

  DetailedCocktailSearchResponseBuilder get _$this {
    if (_$v != null) {
      _drinks = _$v.drinks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailedCocktailSearchResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailedCocktailSearchResponse;
  }

  @override
  void update(void Function(DetailedCocktailSearchResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailedCocktailSearchResponse build() {
    _$DetailedCocktailSearchResponse _$result;
    try {
      _$result =
          _$v ?? new _$DetailedCocktailSearchResponse._(drinks: drinks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'drinks';
        drinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailedCocktailSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

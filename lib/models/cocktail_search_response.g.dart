// GENERATED CODE - DO NOT MODIFY BY HAND

part of cocktail_search_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CocktailSearchResponse> _$cocktailSearchResponseSerializer =
    new _$CocktailSearchResponseSerializer();

class _$CocktailSearchResponseSerializer
    implements StructuredSerializer<CocktailSearchResponse> {
  @override
  final Iterable<Type> types = const [
    CocktailSearchResponse,
    _$CocktailSearchResponse
  ];
  @override
  final String wireName = 'CocktailSearchResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CocktailSearchResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'drinks',
      serializers.serialize(object.drinks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CocktailItem)])),
    ];

    return result;
  }

  @override
  CocktailSearchResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CocktailSearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'drinks':
          result.drinks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CocktailItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CocktailSearchResponse extends CocktailSearchResponse {
  @override
  final BuiltList<CocktailItem> drinks;

  factory _$CocktailSearchResponse(
          [void Function(CocktailSearchResponseBuilder) updates]) =>
      (new CocktailSearchResponseBuilder()..update(updates)).build();

  _$CocktailSearchResponse._({this.drinks}) : super._() {
    if (drinks == null) {
      throw new BuiltValueNullFieldError('CocktailSearchResponse', 'drinks');
    }
  }

  @override
  CocktailSearchResponse rebuild(
          void Function(CocktailSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CocktailSearchResponseBuilder toBuilder() =>
      new CocktailSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CocktailSearchResponse && drinks == other.drinks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, drinks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CocktailSearchResponse')
          ..add('drinks', drinks))
        .toString();
  }
}

class CocktailSearchResponseBuilder
    implements Builder<CocktailSearchResponse, CocktailSearchResponseBuilder> {
  _$CocktailSearchResponse _$v;

  ListBuilder<CocktailItem> _drinks;
  ListBuilder<CocktailItem> get drinks =>
      _$this._drinks ??= new ListBuilder<CocktailItem>();
  set drinks(ListBuilder<CocktailItem> drinks) => _$this._drinks = drinks;

  CocktailSearchResponseBuilder();

  CocktailSearchResponseBuilder get _$this {
    if (_$v != null) {
      _drinks = _$v.drinks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CocktailSearchResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CocktailSearchResponse;
  }

  @override
  void update(void Function(CocktailSearchResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CocktailSearchResponse build() {
    _$CocktailSearchResponse _$result;
    try {
      _$result = _$v ?? new _$CocktailSearchResponse._(drinks: drinks.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'drinks';
        drinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CocktailSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of cocktail_detailed_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CocktailDetailedItem> _$cocktailDetailedItemSerializer =
    new _$CocktailDetailedItemSerializer();

class _$CocktailDetailedItemSerializer
    implements StructuredSerializer<CocktailDetailedItem> {
  @override
  final Iterable<Type> types = const [
    CocktailDetailedItem,
    _$CocktailDetailedItem
  ];
  @override
  final String wireName = 'CocktailDetailedItem';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CocktailDetailedItem object,
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
      'strInstructions',
      serializers.serialize(object.strInstructions,
          specifiedType: const FullType(String)),
      'strDrinkThumb',
      serializers.serialize(object.strDrinkThumb,
          specifiedType: const FullType(String)),
    ];
    if (object.strIngredient1 != null) {
      result
        ..add('strIngredient1')
        ..add(serializers.serialize(object.strIngredient1,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient2 != null) {
      result
        ..add('strIngredient2')
        ..add(serializers.serialize(object.strIngredient2,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient3 != null) {
      result
        ..add('strIngredient3')
        ..add(serializers.serialize(object.strIngredient3,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient4 != null) {
      result
        ..add('strIngredient4')
        ..add(serializers.serialize(object.strIngredient4,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient5 != null) {
      result
        ..add('strIngredient5')
        ..add(serializers.serialize(object.strIngredient5,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient6 != null) {
      result
        ..add('strIngredient6')
        ..add(serializers.serialize(object.strIngredient6,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient7 != null) {
      result
        ..add('strIngredient7')
        ..add(serializers.serialize(object.strIngredient7,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient8 != null) {
      result
        ..add('strIngredient8')
        ..add(serializers.serialize(object.strIngredient8,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient9 != null) {
      result
        ..add('strIngredient9')
        ..add(serializers.serialize(object.strIngredient9,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient10 != null) {
      result
        ..add('strIngredient10')
        ..add(serializers.serialize(object.strIngredient10,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient11 != null) {
      result
        ..add('strIngredient11')
        ..add(serializers.serialize(object.strIngredient11,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient12 != null) {
      result
        ..add('strIngredient12')
        ..add(serializers.serialize(object.strIngredient12,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient13 != null) {
      result
        ..add('strIngredient13')
        ..add(serializers.serialize(object.strIngredient13,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient14 != null) {
      result
        ..add('strIngredient14')
        ..add(serializers.serialize(object.strIngredient14,
            specifiedType: const FullType(String)));
    }
    if (object.strIngredient15 != null) {
      result
        ..add('strIngredient15')
        ..add(serializers.serialize(object.strIngredient15,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure1 != null) {
      result
        ..add('strMeasure1')
        ..add(serializers.serialize(object.strMeasure1,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure2 != null) {
      result
        ..add('strMeasure2')
        ..add(serializers.serialize(object.strMeasure2,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure3 != null) {
      result
        ..add('strMeasure3')
        ..add(serializers.serialize(object.strMeasure3,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure4 != null) {
      result
        ..add('strMeasure4')
        ..add(serializers.serialize(object.strMeasure4,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure5 != null) {
      result
        ..add('strMeasure5')
        ..add(serializers.serialize(object.strMeasure5,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure6 != null) {
      result
        ..add('strMeasure6')
        ..add(serializers.serialize(object.strMeasure6,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure7 != null) {
      result
        ..add('strMeasure7')
        ..add(serializers.serialize(object.strMeasure7,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure8 != null) {
      result
        ..add('strMeasure8')
        ..add(serializers.serialize(object.strMeasure8,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure9 != null) {
      result
        ..add('strMeasure9')
        ..add(serializers.serialize(object.strMeasure9,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure10 != null) {
      result
        ..add('strMeasure10')
        ..add(serializers.serialize(object.strMeasure10,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure11 != null) {
      result
        ..add('strMeasure11')
        ..add(serializers.serialize(object.strMeasure11,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure12 != null) {
      result
        ..add('strMeasure12')
        ..add(serializers.serialize(object.strMeasure12,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure13 != null) {
      result
        ..add('strMeasure13')
        ..add(serializers.serialize(object.strMeasure13,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure14 != null) {
      result
        ..add('strMeasure14')
        ..add(serializers.serialize(object.strMeasure14,
            specifiedType: const FullType(String)));
    }
    if (object.strMeasure15 != null) {
      result
        ..add('strMeasure15')
        ..add(serializers.serialize(object.strMeasure15,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CocktailDetailedItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CocktailDetailedItemBuilder();

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
        case 'strInstructions':
          result.strInstructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strDrinkThumb':
          result.strDrinkThumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient1':
          result.strIngredient1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient2':
          result.strIngredient2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient3':
          result.strIngredient3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient4':
          result.strIngredient4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient5':
          result.strIngredient5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient6':
          result.strIngredient6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient7':
          result.strIngredient7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient8':
          result.strIngredient8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient9':
          result.strIngredient9 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient10':
          result.strIngredient10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient11':
          result.strIngredient11 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient12':
          result.strIngredient12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient13':
          result.strIngredient13 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient14':
          result.strIngredient14 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strIngredient15':
          result.strIngredient15 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure1':
          result.strMeasure1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure2':
          result.strMeasure2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure3':
          result.strMeasure3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure4':
          result.strMeasure4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure5':
          result.strMeasure5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure6':
          result.strMeasure6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure7':
          result.strMeasure7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure8':
          result.strMeasure8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure9':
          result.strMeasure9 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure10':
          result.strMeasure10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure11':
          result.strMeasure11 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure12':
          result.strMeasure12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure13':
          result.strMeasure13 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure14':
          result.strMeasure14 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'strMeasure15':
          result.strMeasure15 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CocktailDetailedItem extends CocktailDetailedItem {
  @override
  final String idDrink;
  @override
  final String strDrink;
  @override
  final String strCategory;
  @override
  final String strAlcoholic;
  @override
  final String strInstructions;
  @override
  final String strDrinkThumb;
  @override
  final String strIngredient1;
  @override
  final String strIngredient2;
  @override
  final String strIngredient3;
  @override
  final String strIngredient4;
  @override
  final String strIngredient5;
  @override
  final String strIngredient6;
  @override
  final String strIngredient7;
  @override
  final String strIngredient8;
  @override
  final String strIngredient9;
  @override
  final String strIngredient10;
  @override
  final String strIngredient11;
  @override
  final String strIngredient12;
  @override
  final String strIngredient13;
  @override
  final String strIngredient14;
  @override
  final String strIngredient15;
  @override
  final String strMeasure1;
  @override
  final String strMeasure2;
  @override
  final String strMeasure3;
  @override
  final String strMeasure4;
  @override
  final String strMeasure5;
  @override
  final String strMeasure6;
  @override
  final String strMeasure7;
  @override
  final String strMeasure8;
  @override
  final String strMeasure9;
  @override
  final String strMeasure10;
  @override
  final String strMeasure11;
  @override
  final String strMeasure12;
  @override
  final String strMeasure13;
  @override
  final String strMeasure14;
  @override
  final String strMeasure15;

  factory _$CocktailDetailedItem(
          [void Function(CocktailDetailedItemBuilder) updates]) =>
      (new CocktailDetailedItemBuilder()..update(updates)).build();

  _$CocktailDetailedItem._(
      {this.idDrink,
      this.strDrink,
      this.strCategory,
      this.strAlcoholic,
      this.strInstructions,
      this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15})
      : super._() {
    if (idDrink == null) {
      throw new BuiltValueNullFieldError('CocktailDetailedItem', 'idDrink');
    }
    if (strDrink == null) {
      throw new BuiltValueNullFieldError('CocktailDetailedItem', 'strDrink');
    }
    if (strCategory == null) {
      throw new BuiltValueNullFieldError('CocktailDetailedItem', 'strCategory');
    }
    if (strAlcoholic == null) {
      throw new BuiltValueNullFieldError(
          'CocktailDetailedItem', 'strAlcoholic');
    }
    if (strInstructions == null) {
      throw new BuiltValueNullFieldError(
          'CocktailDetailedItem', 'strInstructions');
    }
    if (strDrinkThumb == null) {
      throw new BuiltValueNullFieldError(
          'CocktailDetailedItem', 'strDrinkThumb');
    }
  }

  @override
  CocktailDetailedItem rebuild(
          void Function(CocktailDetailedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CocktailDetailedItemBuilder toBuilder() =>
      new CocktailDetailedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CocktailDetailedItem &&
        idDrink == other.idDrink &&
        strDrink == other.strDrink &&
        strCategory == other.strCategory &&
        strAlcoholic == other.strAlcoholic &&
        strInstructions == other.strInstructions &&
        strDrinkThumb == other.strDrinkThumb &&
        strIngredient1 == other.strIngredient1 &&
        strIngredient2 == other.strIngredient2 &&
        strIngredient3 == other.strIngredient3 &&
        strIngredient4 == other.strIngredient4 &&
        strIngredient5 == other.strIngredient5 &&
        strIngredient6 == other.strIngredient6 &&
        strIngredient7 == other.strIngredient7 &&
        strIngredient8 == other.strIngredient8 &&
        strIngredient9 == other.strIngredient9 &&
        strIngredient10 == other.strIngredient10 &&
        strIngredient11 == other.strIngredient11 &&
        strIngredient12 == other.strIngredient12 &&
        strIngredient13 == other.strIngredient13 &&
        strIngredient14 == other.strIngredient14 &&
        strIngredient15 == other.strIngredient15 &&
        strMeasure1 == other.strMeasure1 &&
        strMeasure2 == other.strMeasure2 &&
        strMeasure3 == other.strMeasure3 &&
        strMeasure4 == other.strMeasure4 &&
        strMeasure5 == other.strMeasure5 &&
        strMeasure6 == other.strMeasure6 &&
        strMeasure7 == other.strMeasure7 &&
        strMeasure8 == other.strMeasure8 &&
        strMeasure9 == other.strMeasure9 &&
        strMeasure10 == other.strMeasure10 &&
        strMeasure11 == other.strMeasure11 &&
        strMeasure12 == other.strMeasure12 &&
        strMeasure13 == other.strMeasure13 &&
        strMeasure14 == other.strMeasure14 &&
        strMeasure15 == other.strMeasure15;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, idDrink.hashCode), strDrink.hashCode), strCategory.hashCode), strAlcoholic.hashCode), strInstructions.hashCode), strDrinkThumb.hashCode), strIngredient1.hashCode), strIngredient2.hashCode), strIngredient3.hashCode), strIngredient4.hashCode), strIngredient5.hashCode), strIngredient6.hashCode), strIngredient7.hashCode), strIngredient8.hashCode), strIngredient9.hashCode), strIngredient10.hashCode), strIngredient11.hashCode),
                                                                                strIngredient12.hashCode),
                                                                            strIngredient13.hashCode),
                                                                        strIngredient14.hashCode),
                                                                    strIngredient15.hashCode),
                                                                strMeasure1.hashCode),
                                                            strMeasure2.hashCode),
                                                        strMeasure3.hashCode),
                                                    strMeasure4.hashCode),
                                                strMeasure5.hashCode),
                                            strMeasure6.hashCode),
                                        strMeasure7.hashCode),
                                    strMeasure8.hashCode),
                                strMeasure9.hashCode),
                            strMeasure10.hashCode),
                        strMeasure11.hashCode),
                    strMeasure12.hashCode),
                strMeasure13.hashCode),
            strMeasure14.hashCode),
        strMeasure15.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CocktailDetailedItem')
          ..add('idDrink', idDrink)
          ..add('strDrink', strDrink)
          ..add('strCategory', strCategory)
          ..add('strAlcoholic', strAlcoholic)
          ..add('strInstructions', strInstructions)
          ..add('strDrinkThumb', strDrinkThumb)
          ..add('strIngredient1', strIngredient1)
          ..add('strIngredient2', strIngredient2)
          ..add('strIngredient3', strIngredient3)
          ..add('strIngredient4', strIngredient4)
          ..add('strIngredient5', strIngredient5)
          ..add('strIngredient6', strIngredient6)
          ..add('strIngredient7', strIngredient7)
          ..add('strIngredient8', strIngredient8)
          ..add('strIngredient9', strIngredient9)
          ..add('strIngredient10', strIngredient10)
          ..add('strIngredient11', strIngredient11)
          ..add('strIngredient12', strIngredient12)
          ..add('strIngredient13', strIngredient13)
          ..add('strIngredient14', strIngredient14)
          ..add('strIngredient15', strIngredient15)
          ..add('strMeasure1', strMeasure1)
          ..add('strMeasure2', strMeasure2)
          ..add('strMeasure3', strMeasure3)
          ..add('strMeasure4', strMeasure4)
          ..add('strMeasure5', strMeasure5)
          ..add('strMeasure6', strMeasure6)
          ..add('strMeasure7', strMeasure7)
          ..add('strMeasure8', strMeasure8)
          ..add('strMeasure9', strMeasure9)
          ..add('strMeasure10', strMeasure10)
          ..add('strMeasure11', strMeasure11)
          ..add('strMeasure12', strMeasure12)
          ..add('strMeasure13', strMeasure13)
          ..add('strMeasure14', strMeasure14)
          ..add('strMeasure15', strMeasure15))
        .toString();
  }
}

class CocktailDetailedItemBuilder
    implements Builder<CocktailDetailedItem, CocktailDetailedItemBuilder> {
  _$CocktailDetailedItem _$v;

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

  String _strInstructions;
  String get strInstructions => _$this._strInstructions;
  set strInstructions(String strInstructions) =>
      _$this._strInstructions = strInstructions;

  String _strDrinkThumb;
  String get strDrinkThumb => _$this._strDrinkThumb;
  set strDrinkThumb(String strDrinkThumb) =>
      _$this._strDrinkThumb = strDrinkThumb;

  String _strIngredient1;
  String get strIngredient1 => _$this._strIngredient1;
  set strIngredient1(String strIngredient1) =>
      _$this._strIngredient1 = strIngredient1;

  String _strIngredient2;
  String get strIngredient2 => _$this._strIngredient2;
  set strIngredient2(String strIngredient2) =>
      _$this._strIngredient2 = strIngredient2;

  String _strIngredient3;
  String get strIngredient3 => _$this._strIngredient3;
  set strIngredient3(String strIngredient3) =>
      _$this._strIngredient3 = strIngredient3;

  String _strIngredient4;
  String get strIngredient4 => _$this._strIngredient4;
  set strIngredient4(String strIngredient4) =>
      _$this._strIngredient4 = strIngredient4;

  String _strIngredient5;
  String get strIngredient5 => _$this._strIngredient5;
  set strIngredient5(String strIngredient5) =>
      _$this._strIngredient5 = strIngredient5;

  String _strIngredient6;
  String get strIngredient6 => _$this._strIngredient6;
  set strIngredient6(String strIngredient6) =>
      _$this._strIngredient6 = strIngredient6;

  String _strIngredient7;
  String get strIngredient7 => _$this._strIngredient7;
  set strIngredient7(String strIngredient7) =>
      _$this._strIngredient7 = strIngredient7;

  String _strIngredient8;
  String get strIngredient8 => _$this._strIngredient8;
  set strIngredient8(String strIngredient8) =>
      _$this._strIngredient8 = strIngredient8;

  String _strIngredient9;
  String get strIngredient9 => _$this._strIngredient9;
  set strIngredient9(String strIngredient9) =>
      _$this._strIngredient9 = strIngredient9;

  String _strIngredient10;
  String get strIngredient10 => _$this._strIngredient10;
  set strIngredient10(String strIngredient10) =>
      _$this._strIngredient10 = strIngredient10;

  String _strIngredient11;
  String get strIngredient11 => _$this._strIngredient11;
  set strIngredient11(String strIngredient11) =>
      _$this._strIngredient11 = strIngredient11;

  String _strIngredient12;
  String get strIngredient12 => _$this._strIngredient12;
  set strIngredient12(String strIngredient12) =>
      _$this._strIngredient12 = strIngredient12;

  String _strIngredient13;
  String get strIngredient13 => _$this._strIngredient13;
  set strIngredient13(String strIngredient13) =>
      _$this._strIngredient13 = strIngredient13;

  String _strIngredient14;
  String get strIngredient14 => _$this._strIngredient14;
  set strIngredient14(String strIngredient14) =>
      _$this._strIngredient14 = strIngredient14;

  String _strIngredient15;
  String get strIngredient15 => _$this._strIngredient15;
  set strIngredient15(String strIngredient15) =>
      _$this._strIngredient15 = strIngredient15;

  String _strMeasure1;
  String get strMeasure1 => _$this._strMeasure1;
  set strMeasure1(String strMeasure1) => _$this._strMeasure1 = strMeasure1;

  String _strMeasure2;
  String get strMeasure2 => _$this._strMeasure2;
  set strMeasure2(String strMeasure2) => _$this._strMeasure2 = strMeasure2;

  String _strMeasure3;
  String get strMeasure3 => _$this._strMeasure3;
  set strMeasure3(String strMeasure3) => _$this._strMeasure3 = strMeasure3;

  String _strMeasure4;
  String get strMeasure4 => _$this._strMeasure4;
  set strMeasure4(String strMeasure4) => _$this._strMeasure4 = strMeasure4;

  String _strMeasure5;
  String get strMeasure5 => _$this._strMeasure5;
  set strMeasure5(String strMeasure5) => _$this._strMeasure5 = strMeasure5;

  String _strMeasure6;
  String get strMeasure6 => _$this._strMeasure6;
  set strMeasure6(String strMeasure6) => _$this._strMeasure6 = strMeasure6;

  String _strMeasure7;
  String get strMeasure7 => _$this._strMeasure7;
  set strMeasure7(String strMeasure7) => _$this._strMeasure7 = strMeasure7;

  String _strMeasure8;
  String get strMeasure8 => _$this._strMeasure8;
  set strMeasure8(String strMeasure8) => _$this._strMeasure8 = strMeasure8;

  String _strMeasure9;
  String get strMeasure9 => _$this._strMeasure9;
  set strMeasure9(String strMeasure9) => _$this._strMeasure9 = strMeasure9;

  String _strMeasure10;
  String get strMeasure10 => _$this._strMeasure10;
  set strMeasure10(String strMeasure10) => _$this._strMeasure10 = strMeasure10;

  String _strMeasure11;
  String get strMeasure11 => _$this._strMeasure11;
  set strMeasure11(String strMeasure11) => _$this._strMeasure11 = strMeasure11;

  String _strMeasure12;
  String get strMeasure12 => _$this._strMeasure12;
  set strMeasure12(String strMeasure12) => _$this._strMeasure12 = strMeasure12;

  String _strMeasure13;
  String get strMeasure13 => _$this._strMeasure13;
  set strMeasure13(String strMeasure13) => _$this._strMeasure13 = strMeasure13;

  String _strMeasure14;
  String get strMeasure14 => _$this._strMeasure14;
  set strMeasure14(String strMeasure14) => _$this._strMeasure14 = strMeasure14;

  String _strMeasure15;
  String get strMeasure15 => _$this._strMeasure15;
  set strMeasure15(String strMeasure15) => _$this._strMeasure15 = strMeasure15;

  CocktailDetailedItemBuilder();

  CocktailDetailedItemBuilder get _$this {
    if (_$v != null) {
      _idDrink = _$v.idDrink;
      _strDrink = _$v.strDrink;
      _strCategory = _$v.strCategory;
      _strAlcoholic = _$v.strAlcoholic;
      _strInstructions = _$v.strInstructions;
      _strDrinkThumb = _$v.strDrinkThumb;
      _strIngredient1 = _$v.strIngredient1;
      _strIngredient2 = _$v.strIngredient2;
      _strIngredient3 = _$v.strIngredient3;
      _strIngredient4 = _$v.strIngredient4;
      _strIngredient5 = _$v.strIngredient5;
      _strIngredient6 = _$v.strIngredient6;
      _strIngredient7 = _$v.strIngredient7;
      _strIngredient8 = _$v.strIngredient8;
      _strIngredient9 = _$v.strIngredient9;
      _strIngredient10 = _$v.strIngredient10;
      _strIngredient11 = _$v.strIngredient11;
      _strIngredient12 = _$v.strIngredient12;
      _strIngredient13 = _$v.strIngredient13;
      _strIngredient14 = _$v.strIngredient14;
      _strIngredient15 = _$v.strIngredient15;
      _strMeasure1 = _$v.strMeasure1;
      _strMeasure2 = _$v.strMeasure2;
      _strMeasure3 = _$v.strMeasure3;
      _strMeasure4 = _$v.strMeasure4;
      _strMeasure5 = _$v.strMeasure5;
      _strMeasure6 = _$v.strMeasure6;
      _strMeasure7 = _$v.strMeasure7;
      _strMeasure8 = _$v.strMeasure8;
      _strMeasure9 = _$v.strMeasure9;
      _strMeasure10 = _$v.strMeasure10;
      _strMeasure11 = _$v.strMeasure11;
      _strMeasure12 = _$v.strMeasure12;
      _strMeasure13 = _$v.strMeasure13;
      _strMeasure14 = _$v.strMeasure14;
      _strMeasure15 = _$v.strMeasure15;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CocktailDetailedItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CocktailDetailedItem;
  }

  @override
  void update(void Function(CocktailDetailedItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CocktailDetailedItem build() {
    final _$result = _$v ??
        new _$CocktailDetailedItem._(
            idDrink: idDrink,
            strDrink: strDrink,
            strCategory: strCategory,
            strAlcoholic: strAlcoholic,
            strInstructions: strInstructions,
            strDrinkThumb: strDrinkThumb,
            strIngredient1: strIngredient1,
            strIngredient2: strIngredient2,
            strIngredient3: strIngredient3,
            strIngredient4: strIngredient4,
            strIngredient5: strIngredient5,
            strIngredient6: strIngredient6,
            strIngredient7: strIngredient7,
            strIngredient8: strIngredient8,
            strIngredient9: strIngredient9,
            strIngredient10: strIngredient10,
            strIngredient11: strIngredient11,
            strIngredient12: strIngredient12,
            strIngredient13: strIngredient13,
            strIngredient14: strIngredient14,
            strIngredient15: strIngredient15,
            strMeasure1: strMeasure1,
            strMeasure2: strMeasure2,
            strMeasure3: strMeasure3,
            strMeasure4: strMeasure4,
            strMeasure5: strMeasure5,
            strMeasure6: strMeasure6,
            strMeasure7: strMeasure7,
            strMeasure8: strMeasure8,
            strMeasure9: strMeasure9,
            strMeasure10: strMeasure10,
            strMeasure11: strMeasure11,
            strMeasure12: strMeasure12,
            strMeasure13: strMeasure13,
            strMeasure14: strMeasure14,
            strMeasure15: strMeasure15);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

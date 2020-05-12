library cocktail_detailed_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cocktail_detailed_item.g.dart';

abstract class CocktailDetailedItem implements Built<CocktailDetailedItem, CocktailDetailedItemBuilder> {

  String get idDrink;
  String get strDrink;
  String get strCategory;
  String get strAlcoholic;
  String get strInstructions;
  String get strDrinkThumb;

  @nullable
  String get strIngredient1;
  @nullable
  String get strIngredient2;
  @nullable
  String get strIngredient3;
  @nullable
  String get strIngredient4;
  @nullable
  String get strIngredient5;
  @nullable
  String get strIngredient6;
  @nullable
  String get strIngredient7;
  @nullable
  String get strIngredient8;
  @nullable
  String get strIngredient9;
  @nullable
  String get strIngredient10;
  @nullable
  String get strIngredient11;
  @nullable
  String get strIngredient12;
  @nullable
  String get strIngredient13;
  @nullable
  String get strIngredient14;
  @nullable
  String get strIngredient15;

  @nullable
  String get strMeasure1;
  @nullable
  String get strMeasure2;
  @nullable
  String get strMeasure3;
  @nullable
  String get strMeasure4;
  @nullable
  String get strMeasure5;
  @nullable
  String get strMeasure6;
  @nullable
  String get strMeasure7;
  @nullable
  String get strMeasure8;
  @nullable
  String get strMeasure9;
  @nullable
  String get strMeasure10;
  @nullable
  String get strMeasure11;
  @nullable
  String get strMeasure12;
  @nullable
  String get strMeasure13;
  @nullable
  String get strMeasure14;
  @nullable
  String get strMeasure15;

  CocktailDetailedItem._();

  factory CocktailDetailedItem([updates(CocktailDetailedItemBuilder b)]) = _$CocktailDetailedItem;

  String toJson(){
    return json.encode(serializers.serializeWith(CocktailDetailedItem.serializer, this));
  }

  static CocktailDetailedItem fromJson(String jsonString){
    return serializers.deserializeWith(CocktailDetailedItem.serializer, json.decode(jsonString));
  }

  static Serializer<CocktailDetailedItem> get serializer => _$cocktailDetailedItem;

}
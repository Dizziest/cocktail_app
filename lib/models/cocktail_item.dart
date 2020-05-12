library cocktail_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cocktail_item.g.dart';

abstract class CocktailItem implements Built<CocktailItem, CocktailItemBuilder> {

  String get idDrink;
  String get strDrink;
  String get strCategory;
  String get strAlcoholic;
  String get strDrinkThumb;

  CocktailItem._();

  factory CocktailItem([updates(CocktailItemBuilder b)]) = _$CocktailItem;

  String toJson(){
    return json.encode(serializers.serializeWith(CocktailItem.serializer, this));
  }

  static CocktailItem fromJson(String jsonString){
    return serializers.deserializeWith(CocktailItem.serializer, json.decode(jsonString));
  }

  static Serializer<CocktailItem> get serializer => _$cocktailItemSerializer;

}
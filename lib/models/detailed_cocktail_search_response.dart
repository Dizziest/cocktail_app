library detailed_cocktail_search_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cocktailapp/models/serializer/serializers.dart';

import 'cocktail_detailed_item.dart';

part 'detailed_cocktail_search_response.g.dart';

abstract class DetailedCocktailSearchResponse implements Built<DetailedCocktailSearchResponse, DetailedCocktailSearchResponseBuilder> {

  BuiltList<CocktailDetailedItem> get drinks;

  DetailedCocktailSearchResponse._();

  factory DetailedCocktailSearchResponse([updates(DetailedCocktailSearchResponseBuilder b)]) = _$DetailedCocktailSearchResponse;

  String toJson(){
    return json.encode(serializers.serializeWith(DetailedCocktailSearchResponse.serializer, this));
  }

  static DetailedCocktailSearchResponse fromJson(String jsonString){
    return serializers.deserializeWith(DetailedCocktailSearchResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DetailedCocktailSearchResponse> get serializer => _$detailedCocktailSearchResponseSerializer;

}
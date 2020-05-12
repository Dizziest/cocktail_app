library cocktail_search_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cocktailapp/models/serializer/serializers.dart';

import 'cocktail_item.dart';

part 'cocktail_search_response.g.dart';

abstract class CocktailSearchResponse implements Built<CocktailSearchResponse, CocktailSearchResponseBuilder> {

  BuiltList<CocktailItem> get drinks;

  CocktailSearchResponse._();

  factory CocktailSearchResponse([updates(CocktailSearchResponseBuilder b)]) = _$CocktailSearchResponse;

  String toJson(){
    return json.encode(serializers.serializeWith(CocktailSearchResponse.serializer, this));
  }

  static CocktailSearchResponse fromJson(String jsonString){
    return serializers.deserializeWith(CocktailSearchResponse.serializer, json.decode(jsonString));
  }

  static Serializer<CocktailSearchResponse> get serializer => _$cocktailSearchResponseSerializer;

}
library serializers;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cocktailapp/models/cocktail_detailed_item.dart';
import 'package:cocktailapp/models/cocktail_item.dart';
import 'package:cocktailapp/models/cocktail_search_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  CocktailSearchResponse,
  CocktailItem,
  CocktailDetailedItem
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
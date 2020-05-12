import 'package:built_collection/built_collection.dart';
import 'package:cocktailapp/models/network/cocktail_data_source.dart';

import '../cocktail_item.dart';

class CocktailRepository{
  CocktailDataSource _cocktailDataSource;

  CocktailRepository(this._cocktailDataSource);

  Future<BuiltList<CocktailItem>> searchCocktails(String query) async {
    final searchResult = await _cocktailDataSource.searchCocktails(query: query);
    if(searchResult.drinks.isEmpty) throw NoSearchResultsException();
    return searchResult.drinks;
  }
}

class NoSearchResultsException implements Exception {
  final message = 'No results';
}
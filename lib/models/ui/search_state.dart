import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:cocktailapp/models/cocktail_item.dart';
import 'package:equatable/equatable.dart';

abstract class SearchState implements Built<SearchState, SearchStateBuilder>{

  bool get isLoading;
  BuiltList<CocktailItem> get searchResults;
  String get error;

  bool get isInitial => !isLoading && searchResults.isEmpty && error == '';
  bool get isSuccessful => !isLoading && searchResults.isNotEmpty && error == '';


  SearchState._();

  factory SearchState([updates(SearchStateBuilder b)]) = _$SearchState;

  factory SearchState.initial() {
    return SearchState((b) => b
    ..isLoading = false
    ..searchResults.replace(BuiltList<CocktailItem>())
    ..error = '');
  }

  factory SearchState.loading() {
    return SearchState((b) => b
      ..isLoading = true
      ..searchResults.replace(BuiltList<CocktailItem>())
      ..error = '');
  }

  factory SearchState.failure(String error) {
    return SearchState((b) => b
      ..isLoading = false
      ..searchResults.replace(BuiltList<CocktailItem>())
      ..error = error);
  }

  factory SearchState.success(BuiltList<CocktailItem> resultList) {
    return SearchState((b) => b
      ..isLoading = false
      ..searchResults.replace(resultList)
      ..error = '');
  }

}

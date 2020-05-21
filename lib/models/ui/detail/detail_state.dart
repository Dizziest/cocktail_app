library detail_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:cocktailapp/models/cocktail_detailed_item.dart';

part 'detail_state.g.dart';

abstract class DetailState implements Built<DetailState, DetailStateBuilder>{

  bool get isLoading;

  @nullable
  CocktailDetailedItem get cocktailItem;

  String get error;

  bool get isInitial => !isLoading && cocktailItem == null && error == '';
  bool get isSuccessful => !isLoading && cocktailItem != null && error == '';


  DetailState._();

  factory DetailState([updates(DetailStateBuilder b)]) = _$DetailState;

  factory DetailState.initial() {
    return DetailState((b) => b
    ..isLoading = false
    ..cocktailItem = null
    ..error = '');
  }

  factory DetailState.loading() {
    return DetailState((b) => b
      ..isLoading = true
      ..cocktailItem = null
      ..error = '');
  }

  factory DetailState.failure(String error) {
    return DetailState((b) => b
      ..isLoading = false
      ..cocktailItem = null
      ..error = error);
  }

  factory DetailState.success(CocktailDetailedItem cocktailDetailedItem) {
    return DetailState((b) => b
      ..isLoading = false
      ..cocktailItem.replace(cocktailDetailedItem)
      ..error = '');
  }

}

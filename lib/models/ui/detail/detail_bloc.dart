import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cocktailapp/models/cocktail_search_error.dart';
import 'package:cocktailapp/models/repository/cocktail_repository.dart';
import 'package:cocktailapp/models/ui/detail/detail_state.dart';
import 'package:flutter/cupertino.dart';
import './bloc.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  
  CocktailRepository repository;
  
  DetailBloc(this.repository);
  
  void onShowDetail({@required String id}) {
    dispatch(ShowDetail((b) => b..id = id));
  }
  
  
  @override
  DetailState get initialState => DetailState.initial();

  @override
  Stream<DetailState> mapEventToState(
      DetailState currentState,
    DetailEvent event,
  ) async* {
    if (event is ShowDetail) {
      yield DetailState.loading();

      try {
        final cocktailItem = await repository.searchCocktailById(event.id);
        yield DetailState.success(cocktailItem);
      } on CocktailSearchError catch (e) {
        yield DetailState.failure(e.message);
      }
    }
  }
}

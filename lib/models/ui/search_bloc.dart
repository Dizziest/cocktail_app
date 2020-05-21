import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cocktailapp/models/cocktail_search_error.dart';
import 'package:cocktailapp/models/repository/cocktail_repository.dart';
import './bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CocktailRepository _cocktailRepository;

  SearchBloc(this._cocktailRepository);

  void onSearchInitiated(String query) {
    dispatch(SearchInitiated((b) => b..query = query));
  }

  @override
  SearchState get initialState => SearchState.initial();

  @override
  Stream<SearchState> mapEventToState(
      SearchState currentState,
      SearchEvent event,
  ) async* {
    if (event is SearchInitiated){
      yield* mapSearchInitiated(event);
    }
  }

  Stream<SearchState> mapSearchInitiated(SearchInitiated event) async* {
    if (event.query.isEmpty) {
      yield SearchState.initial();
    } else {
      yield SearchState.loading();

      try {
        if (event.query == 'random'){
          final searchResult = await _cocktailRepository.searchRandomCocktail();
          yield SearchState.success(searchResult);
        } else {
          final searchResult = await _cocktailRepository.searchCocktails(event.query);
          yield SearchState.success(searchResult);
        }
      } on CocktailSearchError catch (e) {
        yield SearchState.failure(e.message);
      } on NoSearchResultsException catch (e) {
        yield SearchState.failure(e.message);
      }
    }
  }
}

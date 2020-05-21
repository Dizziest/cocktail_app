import 'package:cocktailapp/models/network/cocktail_data_source.dart';
import 'package:cocktailapp/models/repository/cocktail_repository.dart';
import 'package:cocktailapp/models/ui/bloc.dart';
import 'package:cocktailapp/models/ui/detail/detail_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;

void initKiwi(){
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((container) => CocktailDataSource(container.resolve()))
    ..registerFactory((container) => CocktailRepository(container.resolve()))
    ..registerFactory((container) => SearchBloc(container.resolve()))
    ..registerFactory((container) => DetailBloc(container.resolve()));
}
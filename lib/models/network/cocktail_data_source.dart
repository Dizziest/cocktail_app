import 'dart:convert';

import 'package:cocktailapp/models/cocktail_search_error.dart';
import 'package:cocktailapp/models/cocktail_search_response.dart';
import 'package:http/http.dart' as http;

import '../detailed_cocktail_search_response.dart';

class CocktailDataSource {
  final http.Client client;

  final String _searchBaseUrl = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?';
  final String _searchRandomUrl = 'https://www.thecocktaildb.com/api/json/v1/1/random.php';
  final String _searchCocktailByIdUrl = 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?';

  CocktailDataSource(this.client);

  Future<CocktailSearchResponse> searchCocktails({
    String query
  }) async {
    final urlRaw = _searchBaseUrl + 's=$query';

    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(urlEncoded);

    if (response.statusCode == 200){
      return CocktailSearchResponse.fromJson(response.body);
    } else {
      throw CocktailSearchError(json.decode(response.body)['error']['message']);
    }
  }

  Future<CocktailSearchResponse> searchRandomCocktail() async {
    final response = await client.get(_searchRandomUrl);
    if (response.statusCode == 200){
      return CocktailSearchResponse.fromJson(response.body);
    } else {
      throw CocktailSearchError(json.decode(response.body)['error']['message']);
    }
  }

  Future<DetailedCocktailSearchResponse> searchDetailedCocktailById(String id) async {
    final urlRaw = _searchCocktailByIdUrl + 'i=$id';

    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(urlEncoded);
    if (response.statusCode == 200){
      return DetailedCocktailSearchResponse.fromJson(response.body);
    } else {
      throw CocktailSearchError(json.decode(response.body)['error']['message']);
    }
  }

}
import 'dart:convert';

import 'package:cocktailapp/models/cocktail_search_error.dart';
import 'package:cocktailapp/models/cocktail_search_response.dart';
import 'package:http/http.dart' as http;

class CocktailDataSource {
  final http.Client client;

  final String _searchBaseUrl = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?';

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
}
import 'package:cocktailapp/models/cocktail_item.dart';
import 'package:cocktailapp/models/ui/bloc.dart';
import 'package:cocktailapp/models/ui/detail/detail_page.dart';
import 'package:cocktailapp/models/ui/widgets/centered_message.dart';
import 'package:cocktailapp/models/ui/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchBloc = kiwi.Container().resolve<SearchBloc>();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _searchBloc,
      child: _buildScaffold(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchBloc.dispose();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
      ),
      body: BlocBuilder(
        bloc: _searchBloc,
        builder: (context, SearchState state) {
          if (state.isInitial) {
            return CenteredMessage(
              message: 'Start searching or type "random" for a random drink!',
              icon: Icons.fastfood,
            );
          }

          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.isSuccessful) {
            return _buildResultList(state);
          }
          else{
            return CenteredMessage(
              message: state.error,
              icon: Icons.error_outline,
            );
          }
        },
      ),
    );
  }

  Widget _buildResultList(SearchState state) {
    return ListView.builder(
      itemCount: state.searchResults.length,
      itemBuilder: (context, index) {
        return _buildCocktailListItemCard(state.searchResults[index]);
      },
    );
  }

  Widget _buildCocktailListItemCard(CocktailItem cocktailItem) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DetailPage(cocktailId: cocktailItem.idDrink,
          );
        }),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.network(
                  cocktailItem.strDrinkThumb,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5),
              Text(
                cocktailItem.strDrink,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              SizedBox(height: 5),

            ],
          ),
        ),
      ),
    );
  }
  

}


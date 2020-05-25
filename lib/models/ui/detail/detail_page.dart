import 'package:cocktailapp/models/cocktail_detailed_item.dart';
import 'package:cocktailapp/models/ui/detail/detail_state.dart';
import 'package:cocktailapp/models/ui/widgets/centered_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import 'detail_bloc.dart';

class DetailPage extends StatefulWidget {

  final String cocktailId;

  DetailPage({
    Key key,
    @required this.cocktailId
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  final _detailBloc = kiwi.Container().resolve<DetailBloc>();


  @override
  void initState() {
    super.initState();
    _detailBloc.onShowDetail(id: widget.cocktailId);
  }

  @override
  void dispose() {
    super.dispose();
    _detailBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _detailBloc,
      child: Scaffold(
        body: BlocBuilder(
          bloc: _detailBloc,
          builder: _buildScaffoldContent,
        ),
      ),
    );
  }

  Widget _buildScaffoldContent(BuildContext context, DetailState state) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: _buildSliverAppBarContent(state),
        ),
        _buildPageBody(state),
      ],
    );
  }

  FlexibleSpaceBar _buildSliverAppBarContent(DetailState state) {
    if(state.isLoading) {
      return FlexibleSpaceBar();
    }

    if(state.isSuccessful) {
      return FlexibleSpaceBar(
        title: Text(
          state.cocktailItem.strDrink,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              state.cocktailItem.strDrinkThumb,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.15, 0.5],
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return FlexibleSpaceBar(
        background: CenteredMessage(
          message: state.error,
          icon: Icons.error_outline,
        ),
      );
    }
  }

  Widget _buildPageBody(DetailState state){
    if (state.isLoading) {
      return SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.isSuccessful) {
      return _buildCocktailDetailList(state.cocktailItem);
    } else {
      return SliverFillRemaining(
        child: CenteredMessage(
          message: state.error,
          icon: Icons.error_outline,
        ),
      );
    }
  }

  Widget _buildCocktailDetailList(CocktailDetailedItem cocktailItem) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            SizedBox(height: 5),
            Text(
              cocktailItem.strDrink,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: MediaQuery.of(context).size.width * 1.5,
                child: Wrap(
                  spacing: 10,
                  children: getTagsAsChipWidgets(cocktailItem),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Ingredients: ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 5,),
            Text(
              getIngredients(cocktailItem),
              style: TextStyle(
                fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(height: 5,),
            Text(
              cocktailItem.strInstructions,
              style: TextStyle(
                fontSize: 16
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getTagsAsChipWidgets(CocktailDetailedItem cocktailItem) {
    List<String> tags = List<String>();

    addTagIfNotNull(cocktailItem.strCategory, tags);
    addTagIfNotNull(cocktailItem.strAlcoholic, tags);
    addTagIfNotNull(cocktailItem.strIngredient1, tags);
    addTagIfNotNull(cocktailItem.strIngredient2, tags);
    addTagIfNotNull(cocktailItem.strIngredient3, tags);
    addTagIfNotNull(cocktailItem.strIngredient4, tags);
    addTagIfNotNull(cocktailItem.strIngredient5, tags);
    addTagIfNotNull(cocktailItem.strIngredient6, tags);
    addTagIfNotNull(cocktailItem.strIngredient7, tags);
    addTagIfNotNull(cocktailItem.strIngredient8, tags);
    addTagIfNotNull(cocktailItem.strIngredient9, tags);
    addTagIfNotNull(cocktailItem.strIngredient10, tags);
    addTagIfNotNull(cocktailItem.strIngredient11, tags);
    addTagIfNotNull(cocktailItem.strIngredient12, tags);
    addTagIfNotNull(cocktailItem.strIngredient13, tags);
    addTagIfNotNull(cocktailItem.strIngredient14, tags);
    addTagIfNotNull(cocktailItem.strIngredient15, tags);
    return tags.map((tag) {
      return Chip(
        label: Text(tag),
      );
    }).toList();
  }

  void addTagIfNotNull(String tag, List<String> list){
    if (tag != null){
      list.add(tag);
    }
  }

  String getIngredients(CocktailDetailedItem cocktailItem){
    List<String> ingredients = List<String>();
    List<String> measures = List<String>();

    addTagIfNotNull(cocktailItem.strIngredient1, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient2, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient3, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient4, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient5, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient6, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient7, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient8, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient9, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient10, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient11, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient12, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient13, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient14, ingredients);
    addTagIfNotNull(cocktailItem.strIngredient15, ingredients);

    addTagIfNotNull(cocktailItem.strMeasure1, measures);
    addTagIfNotNull(cocktailItem.strMeasure2, measures);
    addTagIfNotNull(cocktailItem.strMeasure3, measures);
    addTagIfNotNull(cocktailItem.strMeasure4, measures);
    addTagIfNotNull(cocktailItem.strMeasure5, measures);
    addTagIfNotNull(cocktailItem.strMeasure6, measures);
    addTagIfNotNull(cocktailItem.strMeasure7, measures);
    addTagIfNotNull(cocktailItem.strMeasure8, measures);
    addTagIfNotNull(cocktailItem.strMeasure9, measures);
    addTagIfNotNull(cocktailItem.strMeasure10, measures);
    addTagIfNotNull(cocktailItem.strMeasure11, measures);
    addTagIfNotNull(cocktailItem.strMeasure12, measures);
    addTagIfNotNull(cocktailItem.strMeasure13, measures);
    addTagIfNotNull(cocktailItem.strMeasure14, measures);
    addTagIfNotNull(cocktailItem.strMeasure15, measures);

    for (int i=0; i < ingredients.length; i++){
      if(measures[i] != null){
        ingredients[i] = ingredients[i] + ' ' + measures[i];
      }
    }

    return ingredients.toString();
  }
}

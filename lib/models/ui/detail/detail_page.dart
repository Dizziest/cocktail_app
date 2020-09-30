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

    addTagIfNotNullOrEmpty(cocktailItem.strCategory, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strAlcoholic, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient1, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient2, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient3, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient4, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient5, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient6, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient7, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient8, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient9, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient10, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient11, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient12, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient13, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient14, tags);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient15, tags);
    return tags.map((tag) {
      return Chip(
        label: Text(tag),
      );
    }).toList();
  }

  void addTagIfNotNullOrEmpty(String tag, List<String> list){
    if (tag != null && tag != ""){
      list.add(tag);
    }
  }

  String getIngredients(CocktailDetailedItem cocktailItem){
    List<String> ingredients = List<String>();
    List<String> measures = List<String>();

    addTagIfNotNullOrEmpty(cocktailItem.strIngredient1, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient2, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient3, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient4, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient5, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient6, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient7, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient8, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient9, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient10, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient11, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient12, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient13, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient14, ingredients);
    addTagIfNotNullOrEmpty(cocktailItem.strIngredient15, ingredients);

    addTagIfNotNullOrEmpty(cocktailItem.strMeasure1, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure2, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure3, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure4, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure5, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure6, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure7, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure8, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure9, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure10, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure11, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure12, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure13, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure14, measures);
    addTagIfNotNullOrEmpty(cocktailItem.strMeasure15, measures);

    for (int i=0; i < measures.length; i++){
      if(measures[i] != null){
        ingredients[i] = ingredients[i] + ' - ' + measures[i];
      }
    }

    return ingredients.toString();
  }
}

import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
} 

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    //3
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //4
      title: 'Recipe Calculator',
      //5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
// 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
// 3
      body: SafeArea(
// TODO: Replace child: Container()
// 4

        child: ListView.builder(
// 5
          itemCount: Recipe.samples.length,
// 6
          itemBuilder: (BuildContext context, int index) {
// 7
            return GestureDetector(
// 8
              onTap: () {
// 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
// 10
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
// 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
// 2
      child: Padding(
        padding: const EdgeInsets.all(33),
        child: Column(
// 3
          children: <Widget>[
// 4
            Image(image: AssetImage(recipe.imageUrl)),
// 5
            Text(
              recipe.label,
              style: const TextStyle(
                fontFamily: 'sansarif',
                fontSize: 33,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

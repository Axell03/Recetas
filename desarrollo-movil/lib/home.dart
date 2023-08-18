import 'package:flutter/material.dart';
import 'main.dart';
import 'recipe.dart';

class Home extends StatefulWidget {
  Home (this.title);
//Aqui puedo crear atributos
  String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (context, index){
          return cardRecipeWidget(Recipe.samples[index]);
        },
      ),
    );
  }
}

Widget cardRecipeWidget(Recipe recipes)
{
  return Card(
    elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(recipes.imageURL),
          SizedBox(
            height: 10.0,
          ),
          Text(recipes.label,
          style: TextStyle(
            fontSize: 20.0,
            //fontWeight: fontWeight.w700,
            

          ),)
        ],
      )
    ),
  );
}
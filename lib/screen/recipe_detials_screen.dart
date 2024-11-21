

import 'package:flutter/material.dart';
import 'package:new_resipe_app/module/recipe_module.dart';

class RecipeDetialsScreen extends StatelessWidget {
final Recipe recipe;
RecipeDetialsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0XFFE23E3E),Color(0XFFFF6868),Color(0XFFFF8383),],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )
          ),
        ),
        title: Text(recipe.name,style: TextStyle(
            color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Image.network(recipe.image,),
          SizedBox(height: 20,),
          Text(recipe.name,style: TextStyle(fontSize: 24),)
        ],
      ),

    );
  }
}

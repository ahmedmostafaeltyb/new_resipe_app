import 'package:flutter/material.dart';
import 'package:new_resipe_app/module/recipe_module.dart';

class RecipeWidget extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback ontap;
  RecipeWidget({required this.recipe, required this.ontap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                recipe.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )),
            ),
            Positioned(
              top: 15,
                left: 15,
                child: Container(
                  padding: EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,size: 25,),
                SizedBox(width: 4,),
                Text(
                  recipe.rating.toString(),
      style: TextStyle(color: Colors.white),)
              ],
            ),      
            ),
            ),
            Positioned(
              bottom: 15,
                left: 15,
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(recipe.name,
                style: TextStyle(color: Colors.white),),
                  SizedBox(height: 8,),
                  Text('${recipe.ingreadients}Ingredients',
                      style: TextStyle(color: Colors.white)),
              ],
              ),
            ),
            ),
            Positioned(
              bottom: 50,
                right: 15,
                child: Text('${recipe.coloriesperseving} Kcal'
                    ,style: TextStyle(color: Colors.white),)),
            Positioned(
              top: 25,
                right: 15,
                child: Icon(Icons.more_vert,color: Colors.white,))
          ],
        ),
      ),
    );
  }
}
import 'package:json_annotation/json_annotation.dart';
part 'recipe_module.g.dart';
@JsonSerializable()
class Recipe{
  final String name;
  final int coloriesperseving;
  final String image;
  final double rating;
  final List <String>ingreadients;

  Recipe({ required this.name,
      required this.coloriesperseving,
      required this.image,
      required this.rating,
      required this.ingreadients});

  factory Recipe.fromJson(Map<String,dynamic>json)=>_$RecipeFromJson(json);



}
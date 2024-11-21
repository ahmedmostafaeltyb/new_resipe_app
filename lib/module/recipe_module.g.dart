// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
     name: json['name'] as String,
      coloriesperseving: (json['caloriesPerServing'] as num).toInt(),
      image: json['image'] as String,
      rating:  (json['rating'] as num).toDouble(),
      ingreadients: (json['ingredients'] as List<dynamic>).map((e) => e as String).toList(),

    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'name': instance.name,
      'coloriesperseving': instance.coloriesperseving,
      'image': instance.image,
      'rating': instance.rating,
      'ingreadients': instance.ingreadients,
    };

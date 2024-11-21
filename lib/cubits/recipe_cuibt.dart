
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_resipe_app/cubits/ricpe_state.dart';
import 'package:new_resipe_app/seevices/recipe_service.dart';

import '../module/recipe_module.dart';

class RecipeCuibt extends Cubit<RecipeState>{

  RecipeCuibt():super(RecipeInitial()){
    getRecipes();
  }

final RecipeService _servies = RecipeService();
 void getRecipes() async{
   emit(RecipeLoading());
   try{
     final result=  await _servies.getRecipes();
     emit(RecipeLoaded(recipes: result));
   }catch(e){
     emit(RecipeError(message: e.toString()));

   }

}
}
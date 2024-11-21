

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_resipe_app/cubits/ricpe_state.dart';
import 'package:new_resipe_app/screen/recipe_detials_screen.dart';
import 'package:new_resipe_app/weight/Recipe_widght.dart';

import '../cubits/recipe_cuibt.dart';
import '../module/recipe_module.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
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
      title: Text('Recipe App',style: TextStyle(
        color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold
      ),),


    ),
      body:BlocBuilder <RecipeCuibt,RecipeState>(
        builder: (context,state) {
          if(state is RecipeLoading){
            return Center(
                child: CircularProgressIndicator(color: Color(0XFFE23E3E),
                ));
          }else if(state is RecipeError){
            return  Center(child: Text(state.message));
          }else if (state is RecipeLoaded){
            return ListView.builder(
                itemCount: state.recipes.length,
                itemBuilder: (context, index) {
                  return RecipeWidget(recipe:state.recipes[index] ,ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> 
                    RecipeDetialsScreen(recipe: state.recipes[index]))
                    );
                  },);
                });
          }
          else
            return Text('No recipe find');


        }
      ),
    );
  }
}

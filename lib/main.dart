import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_resipe_app/screen/home_page.dart';
import 'package:new_resipe_app/seevices/recipe_service.dart';

import 'cubits/recipe_cuibt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BlocProvider(create: (context)=>RecipeCuibt(),
      child: HomePage(),)
    );
  }
}

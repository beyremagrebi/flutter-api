import 'package:flutter/material.dart';
import 'package:mini_projet_api/pages/acceuil.dart';
import 'package:mini_projet_api/pages/add.dart';
import 'package:mini_projet_api/pages/categorydetails.dart';
import 'package:mini_projet_api/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini projet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MyHomePage(title: 'Mini Projet API'),
            routes: {
        //'/': (context) => MyHomePage(title: 'Mini Projet API'), // Home route
        '/newcat': (context) =>AddCategoryForm(), 
        '/': (context) =>Home(), 
        '/details':(context) =>CategoryDetails(id: '', categoryImage: '', categoryName: '', onDelete: () {  }, categoryDescription: '',),
      },
    );
  }
}

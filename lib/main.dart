import 'package:danceapp/DBOperations.dart';
import 'package:danceapp/LoginPage.dart';
import 'package:danceapp/databaseDB.dart';
import 'package:flutter/material.dart';
import 'package:danceapp/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await database().initalizeDB();

  var users = await DBOperations(db).retrieveUsers();
  if (users.isNotEmpty) {
    return runApp(
      MaterialApp(
        home: Homepage(),
      ),
    );
  }
  runApp(
    const MaterialApp(
      home: LoginPage(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

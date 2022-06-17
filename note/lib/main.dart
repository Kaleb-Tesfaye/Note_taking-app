import 'package:flutter/material.dart';
import 'package:note/models/NotesOperation.dart';
import 'package:note/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

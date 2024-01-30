import 'jojo_class.dart';
import 'jojo_search.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

late Box<JojoDetails> box;

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
 Hive.registerAdapter(JojoDetailsAdapter());
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'jojodle demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const _SearchScreenState(),
    );
  }
}


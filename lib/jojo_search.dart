import 'jojo_db.dart';
import 'jojo_class.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget{
  const SearchBar({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchBar> {
  List<JojoDetails> getJojoList(){
    getJojo();
    return jojoList;
  }

  List<String> searchResults = [];

  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Search Bar Tutorial'),
      ),
      body: Column(
        children: [
          const SearchBar(),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}